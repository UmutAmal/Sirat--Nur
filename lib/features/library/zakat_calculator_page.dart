import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

const double _zakatRate = 0.025;
const double _goldNisabGrams = 85.0;
const double _silverNisabGrams = 595.0;

const Map<String, String> zakatCurrencySymbols = {
  'USD': r'$',
  'TRY': '₺',
  'EUR': '€',
};

double parseZakatAmount(String rawValue) {
  var normalized = rawValue.trim().replaceAll(RegExp(r'[\s\u00A0]'), '');
  if (normalized.isEmpty) {
    return 0;
  }

  final lastComma = normalized.lastIndexOf(',');
  final lastDot = normalized.lastIndexOf('.');
  if (lastComma >= 0 && lastDot >= 0) {
    final decimalSeparator = lastComma > lastDot ? ',' : '.';
    final thousandsSeparator = decimalSeparator == ',' ? '.' : ',';
    normalized = normalized.replaceAll(thousandsSeparator, '');
    if (decimalSeparator == ',') {
      normalized = normalized.replaceAll(',', '.');
    }
  } else if (lastComma >= 0) {
    normalized = normalized.replaceAll(',', '.');
  }

  return double.tryParse(normalized) ?? 0;
}

String formatZakatMoney(
  double value,
  String currencyCode, {
  String? localeName,
}) {
  final normalizedCurrency = zakatCurrencySymbols.containsKey(currencyCode)
      ? currencyCode
      : 'USD';
  return NumberFormat.currency(
    locale: localeName,
    name: normalizedCurrency,
    symbol: zakatCurrencySymbols[normalizedCurrency],
    decimalDigits: 2,
  ).format(value);
}

/// Comprehensive Zakat Calculator
class ZakatCalculator {
  static double calculateGoldZakat(double goldGrams, double goldPricePerGram) {
    if (goldGrams < _goldNisabGrams) return 0;
    return (goldGrams * goldPricePerGram) * _zakatRate;
  }

  static double calculateSilverZakat(
    double silverGrams,
    double silverPricePerGram,
  ) {
    if (silverGrams < _silverNisabGrams) return 0;
    return (silverGrams * silverPricePerGram) * _zakatRate;
  }

  static double calculateCashZakat(double cashAmount, double nisabValue) {
    if (cashAmount < nisabValue) return 0;
    return cashAmount * _zakatRate;
  }

  static double calculateBusinessZakat(double inventoryValue, double debts) {
    final net = inventoryValue - debts;
    if (net < 0) return 0;
    return net * _zakatRate;
  }

  static double calculateInvestmentZakat(double value, double nisabValue) {
    if (value < nisabValue) return 0;
    return value * _zakatRate;
  }

  static ZakatResult calculateTotal({
    required double goldGrams,
    required double goldPricePerGram,
    required double silverGrams,
    required double silverPricePerGram,
    required double cashAmount,
    required double businessInventory,
    required double businessDebts,
    required double investments,
  }) {
    final nisabValue = _goldNisabGrams * goldPricePerGram;
    final goldValue = goldGrams * goldPricePerGram;
    final silverValue = silverGrams * silverPricePerGram;
    final netBusiness = (businessInventory - businessDebts)
        .clamp(0, double.infinity)
        .toDouble();
    final totalAssets =
        goldValue + silverValue + cashAmount + netBusiness + investments;

    final hasGoldNisab = goldGrams >= _goldNisabGrams && goldPricePerGram > 0;
    final hasSilverNisab =
        silverGrams >= _silverNisabGrams && silverPricePerGram > 0;
    final hasAggregateNisab = nisabValue > 0 && totalAssets >= nisabValue;
    final isNisabMet = hasGoldNisab || hasSilverNisab || hasAggregateNisab;

    final goldZ = isNisabMet ? goldValue * _zakatRate : 0.0;
    final silverZ = isNisabMet ? silverValue * _zakatRate : 0.0;
    final cashZ = isNisabMet ? cashAmount * _zakatRate : 0.0;
    final businessZ = isNisabMet ? netBusiness * _zakatRate : 0.0;
    final investZ = isNisabMet ? investments * _zakatRate : 0.0;
    final total = goldZ + silverZ + cashZ + businessZ + investZ;

    return ZakatResult(
      goldZakat: goldZ,
      silverZakat: silverZ,
      cashZakat: cashZ,
      businessZakat: businessZ,
      investmentZakat: investZ,
      totalZakat: total,
      totalAssets: totalAssets,
      nisabValue: nisabValue,
      isNisabMet: isNisabMet,
    );
  }
}

class ZakatResult {
  final double goldZakat,
      silverZakat,
      cashZakat,
      businessZakat,
      investmentZakat;
  final double totalZakat, totalAssets, nisabValue;
  final bool isNisabMet;
  const ZakatResult({
    required this.goldZakat,
    required this.silverZakat,
    required this.cashZakat,
    required this.businessZakat,
    required this.investmentZakat,
    required this.totalZakat,
    required this.totalAssets,
    required this.nisabValue,
    required this.isNisabMet,
  });
}

class ZakatCalculatorPage extends StatefulWidget {
  const ZakatCalculatorPage({super.key});
  @override
  State<ZakatCalculatorPage> createState() => _ZakatCalculatorPageState();
}

class _ZakatCalculatorPageState extends State<ZakatCalculatorPage> {
  final _goldGC = TextEditingController();
  final _goldPC = TextEditingController();
  final _silverGC = TextEditingController();
  final _silverPC = TextEditingController();
  final _cashC = TextEditingController();
  final _invC = TextEditingController();
  final _debtC = TextEditingController();
  final _investC = TextEditingController();
  ZakatResult? _result;
  String _currency = 'USD';

  @override
  void dispose() {
    _goldGC.dispose();
    _goldPC.dispose();
    _silverGC.dispose();
    _silverPC.dispose();
    _cashC.dispose();
    _invC.dispose();
    _debtC.dispose();
    _investC.dispose();
    super.dispose();
  }

  void _calculate() {
    setState(() {
      _result = ZakatCalculator.calculateTotal(
        goldGrams: parseZakatAmount(_goldGC.text),
        goldPricePerGram: parseZakatAmount(_goldPC.text),
        silverGrams: parseZakatAmount(_silverGC.text),
        silverPricePerGram: parseZakatAmount(_silverPC.text),
        cashAmount: parseZakatAmount(_cashC.text),
        businessInventory: parseZakatAmount(_invC.text),
        businessDebts: parseZakatAmount(_debtC.text),
        investments: parseZakatAmount(_investC.text),
      );
    });
  }

  String _fmt(double v) {
    return formatZakatMoney(
      v,
      _currency,
      localeName: Localizations.localeOf(context).toLanguageTag(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final result = _result;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.zakatCalculator),
        actions: [
          PopupMenuButton<String>(
            onSelected: (v) => setState(() => _currency = v),
            itemBuilder: (_) => [
              const PopupMenuItem(value: 'USD', child: Text('USD (\$)')),
              const PopupMenuItem(value: 'TRY', child: Text('TRY (₺)')),
              const PopupMenuItem(value: 'EUR', child: Text('EUR (€)')),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _section(l10n.zakatGold, Icons.diamond_outlined),
            const SizedBox(height: 8),
            PremiumCard(
              child: Row(
                children: [
                  Expanded(child: _input(_goldGC, l10n.zakatWeightGrams)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _input(
                      _goldPC,
                      '${l10n.zakatPricePerGram} (\$_currency)',
                    ),
                  ),
                ],
              ),
            ),
            _section(l10n.zakatSilver, Icons.circle_outlined),
            const SizedBox(height: 8),
            PremiumCard(
              child: Row(
                children: [
                  Expanded(child: _input(_silverGC, l10n.zakatWeightGrams)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _input(
                      _silverPC,
                      '${l10n.zakatPricePerGram} (\$_currency)',
                    ),
                  ),
                ],
              ),
            ),
            _section(l10n.zakatCashBank, Icons.account_balance_wallet_outlined),
            const SizedBox(height: 8),
            PremiumCard(
              child: _input(_cashC, '${l10n.zakatTotalAmount} (\$_currency)'),
            ),
            _section(l10n.zakatBusiness, Icons.business_outlined),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _input(_invC, '${l10n.zakatInventoryValue} (\$_currency)'),
                  const SizedBox(height: 8),
                  _input(_debtC, '${l10n.zakatDebts} (\$_currency)'),
                ],
              ),
            ),
            _section(l10n.zakatInvestments, Icons.trending_up_outlined),
            const SizedBox(height: 8),
            PremiumCard(
              child: _input(_investC, '${l10n.zakatTotal} (\$_currency)'),
            ),
            const SizedBox(height: 24),
            // Calculate
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _calculate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.emerald,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  l10n.calculateZakat,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            if (result != null) ...[
              const SizedBox(height: 24),
              AnimatedPremiumCard(
                animationDelay: 0,
                child: Column(
                  children: [
                    if (!result.isNisabMet)
                      Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.info_outline_rounded,
                              color: Colors.orange,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                l10n.nisabNotReached,
                                style: const TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Text(
                      l10n.totalZakat,
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _fmt(result.totalZakat),
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: AppColors.emerald,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      l10n.nisabSummary(
                        _fmt(result.nisabValue),
                        _fmt(result.totalAssets),
                      ),
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.4),
                      ),
                    ),
                    const SizedBox(height: 16),
                    _resultRow(l10n.zakatGoldZakat, result.goldZakat),
                    _resultRow(l10n.zakatSilverZakat, result.silverZakat),
                    _resultRow(l10n.zakatCashZakat, result.cashZakat),
                    _resultRow(l10n.zakatBusinessZakat, result.businessZakat),
                    _resultRow(
                      l10n.zakatInvestmentZakat,
                      result.investmentZakat,
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _section(String t, IconData i) => Padding(
    padding: const EdgeInsets.only(top: 16, bottom: 4),
    child: Row(
      children: [
        Icon(i, color: AppColors.emerald, size: 18),
        const SizedBox(width: 8),
        Text(
          t,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            color: AppColors.emerald,
            fontSize: 14,
          ),
        ),
      ],
    ),
  );

  Widget _input(TextEditingController c, String label) => TextField(
    controller: c,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(fontSize: 13),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    ),
  );

  Widget _resultRow(String l, double v) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          l,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
        Text(
          _fmt(v),
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13),
        ),
      ],
    ),
  );
}
