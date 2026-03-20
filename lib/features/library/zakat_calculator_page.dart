import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

/// Comprehensive Zakat Calculator
class ZakatCalculator {
  static double calculateGoldZakat(double goldGrams, double goldPricePerGram) {
    const nisabGold = 85.0;
    if (goldGrams < nisabGold) return 0;
    return (goldGrams * goldPricePerGram) * 0.025;
  }

  static double calculateSilverZakat(double silverGrams, double silverPricePerGram) {
    const nisabSilver = 595.0;
    if (silverGrams < nisabSilver) return 0;
    return (silverGrams * silverPricePerGram) * 0.025;
  }

  static double calculateCashZakat(double cashAmount, double nisabValue) {
    if (cashAmount < nisabValue) return 0;
    return cashAmount * 0.025;
  }

  static double calculateBusinessZakat(double inventoryValue, double debts) {
    final net = inventoryValue - debts;
    if (net < 0) return 0;
    return net * 0.025;
  }

  static double calculateInvestmentZakat(double value, double nisabValue) {
    if (value < nisabValue) return 0;
    return value * 0.025;
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
    final nisabValue = 85.0 * goldPricePerGram;
    final goldZ = calculateGoldZakat(goldGrams, goldPricePerGram);
    final silverZ = calculateSilverZakat(silverGrams, silverPricePerGram);
    final cashZ = calculateCashZakat(cashAmount, nisabValue);
    final businessZ = calculateBusinessZakat(businessInventory, businessDebts);
    final investZ = calculateInvestmentZakat(investments, nisabValue);
    final total = goldZ + silverZ + cashZ + businessZ + investZ;
    final totalAssets = goldGrams * goldPricePerGram + silverGrams * silverPricePerGram
        + cashAmount + businessInventory - businessDebts + investments;

    return ZakatResult(
      goldZakat: goldZ, silverZakat: silverZ, cashZakat: cashZ,
      businessZakat: businessZ, investmentZakat: investZ,
      totalZakat: total, totalAssets: totalAssets,
      nisabValue: nisabValue, isNisabMet: totalAssets >= nisabValue,
    );
  }
}

class ZakatResult {
  final double goldZakat, silverZakat, cashZakat, businessZakat, investmentZakat;
  final double totalZakat, totalAssets, nisabValue;
  final bool isNisabMet;
  const ZakatResult({
    required this.goldZakat, required this.silverZakat, required this.cashZakat,
    required this.businessZakat, required this.investmentZakat,
    required this.totalZakat, required this.totalAssets,
    required this.nisabValue, required this.isNisabMet,
  });
}

class ZakatCalculatorPage extends StatefulWidget {
  const ZakatCalculatorPage({super.key});
  @override
  State<ZakatCalculatorPage> createState() => _ZakatCalculatorPageState();
}

class _ZakatCalculatorPageState extends State<ZakatCalculatorPage> {
  final _goldGC = TextEditingController();
  final _goldPC = TextEditingController(text: '70');
  final _silverGC = TextEditingController();
  final _silverPC = TextEditingController(text: '0.90');
  final _cashC = TextEditingController();
  final _invC = TextEditingController();
  final _debtC = TextEditingController();
  final _investC = TextEditingController();
  ZakatResult? _result;
  String _currency = 'USD';

  @override
  void dispose() {
    _goldGC.dispose(); _goldPC.dispose(); _silverGC.dispose(); _silverPC.dispose();
    _cashC.dispose(); _invC.dispose(); _debtC.dispose(); _investC.dispose();
    super.dispose();
  }

  void _calculate() {
    setState(() {
      _result = ZakatCalculator.calculateTotal(
        goldGrams: double.tryParse(_goldGC.text) ?? 0,
        goldPricePerGram: double.tryParse(_goldPC.text) ?? 0,
        silverGrams: double.tryParse(_silverGC.text) ?? 0,
        silverPricePerGram: double.tryParse(_silverPC.text) ?? 0,
        cashAmount: double.tryParse(_cashC.text) ?? 0,
        businessInventory: double.tryParse(_invC.text) ?? 0,
        businessDebts: double.tryParse(_debtC.text) ?? 0,
        investments: double.tryParse(_investC.text) ?? 0,
      );
    });
  }

  String _fmt(double v) {
    final sym = _currency == 'TRY' ? '₺' : _currency == 'EUR' ? '€' : '\$';
    final rate = _currency == 'TRY' ? 34.0 : _currency == 'EUR' ? 0.92 : 1.0;
    return '$sym${(v * rate).toStringAsFixed(2)}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zakat Calculator'),
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
            _section('Gold (Altın)', Icons.diamond_outlined),
            const SizedBox(height: 8),
            PremiumCard(child: Row(children: [
              Expanded(child: _input(_goldGC, 'Weight (g)')),
              const SizedBox(width: 12),
              Expanded(child: _input(_goldPC, 'Price/g (\$)')),
            ])),
            _section('Silver (Gümüş)', Icons.circle_outlined),
            const SizedBox(height: 8),
            PremiumCard(child: Row(children: [
              Expanded(child: _input(_silverGC, 'Weight (g)')),
              const SizedBox(width: 12),
              Expanded(child: _input(_silverPC, 'Price/g (\$)')),
            ])),
            _section('Cash / Bank', Icons.account_balance_wallet_outlined),
            const SizedBox(height: 8),
            PremiumCard(child: _input(_cashC, 'Total Amount (\$)')),
            _section('Business', Icons.business_outlined),
            const SizedBox(height: 8),
            PremiumCard(child: Column(children: [
              _input(_invC, 'Inventory Value (\$)'),
              const SizedBox(height: 8),
              _input(_debtC, 'Debts (\$)'),
            ])),
            _section('Investments', Icons.trending_up_outlined),
            const SizedBox(height: 8),
            PremiumCard(child: _input(_investC, 'Total (\$)')),
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                child: const Text('Calculate Zakat', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
              ),
            ),
            if (_result != null) ...[
              const SizedBox(height: 24),
              AnimatedPremiumCard(
                animationDelay: 0,
                child: Column(
                  children: [
                    if (!_result!.isNisabMet)
                      Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.orange.withValues(alpha: 0.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(children: [
                          Icon(Icons.info_outline_rounded, color: Colors.orange, size: 20),
                          SizedBox(width: 8),
                          Expanded(child: Text('Nisab not reached. Zakat is not obligatory.',
                            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w600, fontSize: 13))),
                        ]),
                      ),
                    Text('Total Zakat', style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                      fontWeight: FontWeight.w700)),
                    const SizedBox(height: 8),
                    Text(_fmt(_result!.totalZakat), style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w900, color: AppColors.emerald)),
                    const SizedBox(height: 4),
                    Text('Nisab: ${_fmt(_result!.nisabValue)} • Assets: ${_fmt(_result!.totalAssets)}',
                      style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
                    const SizedBox(height: 16),
                    _resultRow('Gold Zakat', _result!.goldZakat),
                    _resultRow('Silver Zakat', _result!.silverZakat),
                    _resultRow('Cash Zakat', _result!.cashZakat),
                    _resultRow('Business Zakat', _result!.businessZakat),
                    _resultRow('Investment Zakat', _result!.investmentZakat),
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
    child: Row(children: [
      Icon(i, color: AppColors.emerald, size: 18), const SizedBox(width: 8),
      Text(t, style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 14)),
    ]),
  );

  Widget _input(TextEditingController c, String label) => TextField(
    controller: c, keyboardType: TextInputType.number,
    decoration: InputDecoration(
      labelText: label, labelStyle: const TextStyle(fontSize: 13),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    ),
  );

  Widget _resultRow(String l, double v) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 3),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(l, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
      Text(_fmt(v), style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13)),
    ]),
  );
}
