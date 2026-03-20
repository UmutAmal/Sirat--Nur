import 'package:flutter/material.dart';

/// Zakat Calculator Utilities
/// Calculates Zakat based on Islamic principles

class ZakatCalculator {
  /// Calculate Zakat on gold
  /// Nisab for gold is 85 grams (according to most scholars)
  static double calculateGoldZakat(double goldGrams, double goldPricePerGram) {
    const nisabGold = 85.0; // grams
    if (goldGrams < nisabGold) return 0;
    final goldValue = goldGrams * goldPricePerGram;
    return goldValue * 0.025; // 2.5%
  }

  /// Calculate Zakat on silver
  /// Nisab for silver is 595 grams
  static double calculateSilverZakat(double silverGrams, double silverPricePerGram) {
    const nisabSilver = 595.0; // grams
    if (silverGrams < nisabSilver) return 0;
    final silverValue = silverGrams * silverPricePerGram;
    return silverValue * 0.025; // 2.5%
  }

  /// Calculate Zakat on cash/bank accounts
  static double calculateCashZakat(double cashAmount) {
    // Nisab for cash is equivalent to gold nisab value
    // Using approximate gold price: $70/gram = ~$5950
    const nisabValue = 5950.0; // USD equivalent
    if (cashAmount < nisabValue) return 0;
    return cashAmount * 0.025; // 2.5%
  }

  /// Calculate Zakat on business inventory
  static double calculateBusinessZakat(double inventoryValue, double businessDebts) {
    final netValue = inventoryValue - businessDebts;
    if (netValue < 0) return 0;
    return netValue * 0.025; // 2.5%
  }

  /// Calculate Zakat on investments
  static double calculateInvestmentZakat(double investmentValue) {
    const nisabValue = 5950.0;
    if (investmentValue < nisabValue) return 0;
    return investmentValue * 0.025; // 2.5%
  }

  /// Calculate total Zakat
  static ZakatResult calculateTotalZakat({
    required double goldGrams,
    required double goldPricePerGram,
    required double silverGrams,
    required double silverPricePerGram,
    required double cashAmount,
    required double businessInventoryValue,
    required double businessDebts,
    required double investmentValue,
  }) {
    final goldZakat = calculateGoldZakat(goldGrams, goldPricePerGram);
    final silverZakat = calculateSilverZakat(silverGrams, silverPricePerGram);
    final cashZakat = calculateCashZakat(cashAmount);
    final businessZakat = calculateBusinessZakat(businessInventoryValue, businessDebts);
    final investmentZakat = calculateInvestmentZakat(investmentValue);

    final totalZakat = goldZakat + silverZakat + cashZakat + businessZakat + investmentZakat;
    
    final totalAssets = goldGrams * goldPricePerGram + 
        silverGrams * silverPricePerGram + 
        cashAmount + 
        businessInventoryValue - businessDebts + 
        investmentValue;

    return ZakatResult(
      goldZakat: goldZakat,
      silverZakat: silverZakat,
      cashZakat: cashZakat,
      businessZakat: businessZakat,
      investmentZakat: investmentZakat,
      totalZakat: totalZakat,
      totalAssets: totalAssets,
      isNisabMet: totalAssets >= 5950,
    );
  }
}

/// Result class for Zakat calculation
class ZakatResult {
  final double goldZakat;
  final double silverZakat;
  final double cashZakat;
  final double businessZakat;
  final double investmentZakat;
  final double totalZakat;
  final double totalAssets;
  final bool isNisabMet;

  const ZakatResult({
    required this.goldZakat,
    required this.silverZakat,
    required this.cashZakat,
    required this.businessZakat,
    required this.investmentZakat,
    required this.totalZakat,
    required this.totalAssets,
    required this.isNisabMet,
  });
}

/// Zakat Calculator Page Widget
class ZakatCalculatorPage extends StatefulWidget {
  const ZakatCalculatorPage({super.key});

  @override
  State<ZakatCalculatorPage> createState() => _ZakatCalculatorPageState();
}

class _ZakatCalculatorPageState extends State<ZakatCalculatorPage> {
  // Controllers
  final _goldGramsController = TextEditingController();
  final _goldPriceController = TextEditingController(text: '70'); // Default gold price per gram in USD
  final _silverGramsController = TextEditingController();
  final _silverPriceController = TextEditingController(text: '0.90'); // Default silver price per gram
  final _cashController = TextEditingController();
  final _inventoryController = TextEditingController();
  final _debtsController = TextEditingController();
  final _investmentsController = TextEditingController();

  ZakatResult? _result;
  String _currency = 'USD';

  @override
  void dispose() {
    _goldGramsController.dispose();
    _goldPriceController.dispose();
    _silverGramsController.dispose();
    _silverPriceController.dispose();
    _cashController.dispose();
    _inventoryController.dispose();
    _debtsController.dispose();
    _investmentsController.dispose();
    super.dispose();
  }

  void _calculate() {
    setState(() {
      _result = ZakatCalculator.calculateTotalZakat(
        goldGrams: double.tryParse(_goldGramsController.text) ?? 0,
        goldPricePerGram: double.tryParse(_goldPriceController.text) ?? 0,
        silverGrams: double.tryParse(_silverGramsController.text) ?? 0,
        silverPricePerGram: double.tryParse(_silverPriceController.text) ?? 0,
        cashAmount: double.tryParse(_cashController.text) ?? 0,
        businessInventoryValue: double.tryParse(_inventoryController.text) ?? 0,
        businessDebts: double.tryParse(_debtsController.text) ?? 0,
        investmentValue: double.tryParse(_investmentsController.text) ?? 0,
      );
    });
  }

  String _formatCurrency(double amount) {
    if (_currency == 'USD') {
      return '\$${amount.toStringAsFixed(2)}';
    } else if (_currency == 'TRY') {
      return '₺${(amount * 30).toStringAsFixed(2)}'; // Approximate USD to TRY
    } else if (_currency == 'EUR') {
      return '€${(amount * 0.92).toStringAsFixed(2)}'; // Approximate USD to EUR
    }
    return '\$${amount.toStringAsFixed(2)}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final primaryColor = theme.colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Zekat Hesaplama'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) => setState(() => _currency = value),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'USD', child: Text('USD (\$)')),
              const PopupMenuItem(value: 'TRY', child: Text('TRY (₺)')),
              const PopupMenuItem(value: 'EUR', child: Text('EUR (€)')),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gold Section
            _buildSectionTitle('Altın', Icons.diamond_outlined, primaryColor),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _goldGramsController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Ağırlık (gram)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _goldPriceController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Gram Fiyatı (\$)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Silver Section
            _buildSectionTitle('Gümüş', Icons.circle_outlined, primaryColor),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _silverGramsController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Ağırlık (gram)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _silverPriceController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Gram Fiyatı (\$)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Cash Section
            _buildSectionTitle('Nakit / Banka', Icons.account_balance_wallet_outlined, primaryColor),
            const SizedBox(height: 12),
            TextField(
              controller: _cashController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Toplam Miktar (\$)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Business Section
            _buildSectionTitle('İşletme', Icons.business_outlined, primaryColor),
            const SizedBox(height: 12),
            TextField(
              controller: _inventoryController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Stok Değeri (\$)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _debtsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Borçlar (\$)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Investments Section
            _buildSectionTitle('Yatırımlar', Icons.trending_up_outlined, primaryColor),
            const SizedBox(height: 12),
            TextField(
              controller: _investmentsController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Toplam Yatırım (\$)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),

            // Calculate Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _calculate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Zekatı Hesapla',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Results
            if (_result != null) _buildResults(theme, isDark, primaryColor),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, IconData icon, Color color) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildResults(ThemeData theme, bool isDark, Color primaryColor) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: primaryColor.withValues(alpha: isDark ? 0.15 : 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: primaryColor.withValues(alpha: 0.3)),
      ),
      child: Column(
        children: [
          if (!_result!.isNisabMet) ...[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Icon(Icons.info_outline, color: Colors.orange),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Nisab miktarına ulaşmadınız. Zekat farz değildir.',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
          Text(
            'Toplam Zekat',
            style: theme.textTheme.titleMedium?.copyWith(
              color: isDark ? Colors.white70 : Colors.black54,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _formatCurrency(_result!.totalZakat),
            style: theme.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Toplam Varlık: ${_formatCurrency(_result!.totalAssets)}',
            style: theme.textTheme.bodySmall?.copyWith(
              color: isDark ? Colors.white60 : Colors.black54,
            ),
          ),
          const Divider(height: 32),
          _buildResultRow('Altın Zekatı', _result!.goldZakat),
          _buildResultRow('Gümüş Zekatı', _result!.silverZakat),
          _buildResultRow('Nakit Zekatı', _result!.cashZakat),
          _buildResultRow('İşletme Zekatı', _result!.businessZakat),
          _buildResultRow('Yatırım Zekatı', _result!.investmentZakat),
        ],
      ),
    );
  }

  Widget _buildResultRow(String label, double amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            _formatCurrency(amount),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
