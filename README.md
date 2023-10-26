# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# Describe Datasets

I will be using 4 datasets of my own creation. These are CSV files with data for a TTRPG (Tabletop Roleplaying Game) called GURPS (Generic Universal Roleplaying System) that is similar to D&D (Dungeons and Dragons).
In particular I will be using the following tables:
---Skills List, Spells List, and Advantages List, and Disadvantages List.

Table Breakdowns:
The Skills List table will use the following columns:
---Skill Tech Level Required Specialization Required Description Defaults Difficulty Attribute Modifiers
The Spells List table will use the following columns:
---Spell Class Description Duration Cost to Cast Cost to Maintain Time to Cast Prerequisites Difficulty Spell College Item Enchantment
The Advantages List table will use the following columns:
---Advantage Description Cost
The Disadvantages List table will use the following columns:
---Disadvantage Description Cost Self-Control

I also intend to generate a Faker Table to use alongside and create associations with these tables from the Games sections in Faker.
---This will be a Characters Table
