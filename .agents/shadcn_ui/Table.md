# Table

A responsive table component.

## Minimal Example (List)

```dart
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

const invoices = [
  (
    invoice: "INV001",
    paymentStatus: "Paid",
    totalAmount: r"$250.00",
    paymentMethod: "Credit Card",
  ),
  (
    invoice: "INV002",
    paymentStatus: "Pending",
    totalAmount: r"$150.00",
    paymentMethod: "PayPal",
  ),
];

ShadTable.list(
  header: const [
    ShadTableCell.header(child: Text('Invoice')),
    ShadTableCell.header(child: Text('Status')),
    ShadTableCell.header(child: Text('Method')),
    ShadTableCell.header(
      alignment: Alignment.centerRight,
      child: Text('Amount'),
    ),
  ],
  children: invoices
      .map(
        (invoice) => [
          ShadTableCell(
            child: Text(
              invoice.invoice,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ShadTableCell(child: Text(invoice.paymentStatus)),
          ShadTableCell(child: Text(invoice.paymentMethod)),
          ShadTableCell(
            alignment: Alignment.centerRight,
            child: Text(invoice.totalAmount),
          ),
        ],
      )
      .toList(),
)
```

