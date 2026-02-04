# sb-blackmarket

A configurable blackmarket system for FiveM QBCore servers.
This resource adds an illegal trading system with vendors, reputation progression, and police interaction, designed to support roleplay-focused servers and controlled server economies.

---

## Overview

`sb-blackmarket` introduces an underground economy where players can access illegal vendors to purchase restricted items. Access, pricing, and availability are influenced by player reputation, police presence, and server configuration.

The script is modular, server-validated, and designed to scale with population while maintaining balance.

---

## Features

### Blackmarket Access

* Hidden or restricted vendor access
* NPC or target-based interaction
* Item-based or location-based unlocking
* Configurable access requirements

### Vendor System

* Multiple vendors with separate item pools
* Vendor availability based on police presence
* Time-based or conditional access
* Easy vendor expansion via configuration

### Items and Categories

* Weapons and ammunition
* Illegal tools and devices
* Drugs and crafting materials
* Rare or high-risk items
* Fully configurable pricing, limits, and requirements

### Reputation System

* Reputation gained through blackmarket activity
* Item and vendor unlocks tied to reputation
* Optional reputation loss on arrest or death
* Server-side reputation tracking

### Police Interaction

* Minimum police requirement
* Vendors disabled during high police activity
* Optional alert or detection mechanics
* Fully configurable police jobs and thresholds

### Economy Controls

* Purchase cooldowns and limits
* Server-side validation for all transactions
* Configurable pricing and availability
* Anti-exploit safeguards

### UI Integration

* QBCore-compatible menus
* Category-based item browsing
* Optional reputation display

---

## Resource Structure

```plaintext
sb-blackmarket/
├── client/
│   ├── main.lua
│   └── vendors.lua
├── server/
│   ├── main.lua
│   └── reputation.lua
├── shared/
│   └── config.lua
├── locales/
│   └── en.lua
├── fxmanifest.lua
└── README.md
```

---

## Configuration

All configuration is handled in:

```plaintext
shared/config.lua
```

Configurable options include:

* Vendor locations and availability
* Item lists, pricing, and limits
* Reputation requirements and rewards
* Police job checks and thresholds
* Cooldowns and restrictions

No core values are hardcoded.

---

## Requirements

### Required

* qb-core
* qb-menu or compatible menu system
* qb-target (if using NPC interaction)

### Optional / Compatible

* qb-phone
* qb-inventory
* ox_inventory (with adaptation)

---

## Installation

1. Clone or download the repository:

   ```bash
   git clone https://github.com/clasherW8/sb-blackmarket.git
   ```
2. Place the resource in your server resources directory:

   ```plaintext
   resources/[qb]/sb-blackmarket
   ```
3. Add the resource to `server.cfg`:

   ```cfg
   ensure sb-blackmarket
   ```
4. Configure `shared/config.lua`.
5. Restart the server.

---

## Security

* All purchases are validated server-side
* Inventory and reputation checks enforced
* Anti-duplication protections
* Optional transaction logging

---

## Development Notes

* Built specifically for QBCore
* Modular and extensible design
* Suitable for RP-focused servers
* Designed to protect server economy balance

---

## Planned Features

* Blackmarket missions and contracts
* Rotating vendor locations
* Dynamic pricing systems
* Police sting or raid events

---

## License

This project is provided as-is.
Modification for personal or server use is permitted.
Redistribution or resale is not allowed without explicit permission.

---

## Support

For bug reports or feature requests:

* Open a GitHub issue
* Submit a pull request
* Contact the repository maintainer