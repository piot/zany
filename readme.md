## Zany

#### Memory

| Address       | Size  | Name                      | Description              |
| --------------|-------|---------------------------|--------------------------|
| $0000 - $00FF | $0100 | Zero Page                 | Indirect 16-bit pointers     |
| $0100 - $01FF | $0100 | Stack                     | Stack pointer starts at $01ff |
| $0200 - $FFFF | $FDFF | - Free to use -           | 63 KiB |

.prg files are loaded from address $0200.
