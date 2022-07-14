# Welcome to Ansible Essentials!
This is a walkthrough course aimed at people willing to learn the building blocks of Ansible in a controlled environment. In order to make the most out of it, we recommend that you go through all chapters in sequence.

To access a chapter, simply click one of the links below or open the respective `.md` file in the this repository's `chapters` directory.

## Chapters:
  - ## [1. Environment Install and Setup](<chapters/1. Environment Install and Setup.md#1-environment-install-and-setup>)
    - ### [1.1 Install Visual Studio Code](<chapters/1. Environment Install and Setup.md#11-install-visual-studio-code>)
      - ### [1.1.1 VSCode Setup](<chapters/1. Environment Install and Setup.md#111-vscode-setup>)
    - ### [1.2 Install Virtualbox](<chapters/1. Environment Install and Setup.md#12-install-virtualbox>)
    - ### [1.3 Install Vagrant](<chapters/1. Environment Install and Setup.md#13-install-vagrant>)
      - ### [1.3.1 Vagrant Virtualbox Guest Additions Plugin Setup](<chapters/1. Environment Install and Setup.md#131-vagrant-virtualbox-guest-additions-plugin-setup>)
    - ### [1.4 Lab Environment Setup](<chapters/1. Environment Install and Setup.md#14-lab-environment-setup>)
      - ### [1.4.1 Downloading the Source Code from GitHub](<chapters/1. Environment Install and Setup.md#141-downloading-the-source-code-from-github>)
      - ### [1.4.2 Running/Resetting the Lab Environment](<chapters/1. Environment Install and Setup.md#142-runningresetting-the-lab-environment>)
      - ### [1.4.3 Validating your Lab Environment](<chapters/1. Environment Install and Setup.md#143-validating-your-lab-environment>)
  - ## [2. Basic Concepts](<chapters/2. Basic Concepts.md#2-basic-concepts>)
    - ### [2.1 What Is Ansible?](<chapters/2. Basic Concepts.md#21-what-is-ansible>)
    - ### [2.2 YAML](<chapters/2. Basic Concepts.md#22-yaml>)
    - ### [2.3 JSON](<chapters/2. Basic Concepts.md#23-json>)
    - ### [2.4 Jinja](<chapters/2. Basic Concepts.md#24-jinja>)
    - ### [2.5 Ansible Inventory](<chapters/2. Basic Concepts.md#25-ansible-inventory>)
    - ### [2.6 Basic Ansible Shell Commands and Tools](<chapters/2. Basic Concepts.md#26-basic-ansible-shell-commands-and-tools>)
      - ### [2.6.1 `ansible`](<chapters/2. Basic Concepts.md#261-ansible>)
      - ### [2.6.2 `ansible-inventory`](<chapters/2. Basic Concepts.md#262-ansible-inventory>)
      - ### [2.6.3 `ansible-playbook`](<chapters/2. Basic Concepts.md#263-ansible-playbook>)
      - ### [2.6.4 `ansible-doc`](<chapters/2. Basic Concepts.md#264-ansible-doc>)
  - ## [3. Ansible Playbooks](<chapters/3. Ansible Playbooks.md#3-ansible-playbooks>)
    - ### [3.1 What Is an Ansible Playbook?](<chapters/3. Ansible Playbooks.md#31-what-is-an-ansible-playbook>)
    - ### [3.2 Plays](<chapters/3. Ansible Playbooks.md#32-plays>)
    - ### [3.3 Tasks](<chapters/3. Ansible Playbooks.md#33-tasks>)
    - ### [3.4 Running and Improving our Playbook](<chapters/3. Ansible Playbooks.md#34-running-and-improving-our-playbook>)
      - ### [3.4.1 Selecting Output Fields](<chapters/3. Ansible Playbooks.md#341-selecting-output-fields>)
      - ### [3.4.2 Targeting Hosts Programmatically](<chapters/3. Ansible Playbooks.md#342-targeting-hosts-programmatically>)
      - ### [3.4.3 Adding Conditionals](<chapters/3. Ansible Playbooks.md#343-adding-conditionals>)
      - ### [3.4.4 Dealing With Unreachable Hosts](<chapters/3. Ansible Playbooks.md#344-dealing-with-unreachable-hosts>)
      - ### [3.4.5 Error Handling](<chapters/3. Ansible Playbooks.md#345-error-handling>)
      - ### [3.4.6 Facts and Variables](<chapters/3. Ansible Playbooks.md#346-facts-and-variables>)
      - ### [3.4.7 Improved Playbook](<chapters/3. Ansible Playbooks.md#347-improved-playbook>)
    - ### [3.5 The `become` Directive](<chapters/3. Ansible Playbooks.md#35-the-become-directive>)
  - ## [4. Ansible Modules](<chapters/4. Ansible Modules.md#4-ansible-modules>)
    - ### [4.1 What Is an Ansible Module?](<chapters/4. Ansible Modules.md#41-what-is-an-ansible-module>)
    - ### [4.2 `ping` and `win_ping`](<chapters/4. Ansible Modules.md#42-ping-and-win_ping>)
    - ### [4.3 `command`, `shell` and `raw`](<chapters/4. Ansible Modules.md#43-command-shell-and-raw>)
    - ### [4.4 `file`, `copy` and `fetch`](<chapters/4. Ansible Modules.md#44-file-copy-and-fetch>)
    - ### [4.5 `script`](<chapters/4. Ansible Modules.md#45-script>)
    - ### [4.6 `mail`](<chapters/4. Ansible Modules.md#46-mail>)
    - ### [4.7 `uri`](<chapters/4. Ansible Modules.md#47-uri>)
    - ### [4.8 Creating a Custom Module](<chapters/4. Ansible Modules.md#48-creating-a-custom-module>)
      - ### [4.8.1 Output Structure Requirements](<chapters/4. Ansible Modules.md#481-output-structure-requirements>)
      - ### [4.8.2 Variables](<chapters/4. Ansible Modules.md#482-variables>)
      - ### [4.8.3 Functions](<chapters/4. Ansible Modules.md#483-functions>)
      - ### [4.8.4 Running our Custom Module](<chapters/4. Ansible Modules.md#484-running-our-custom-module>)
  - ## [5. Ansible Roles](<chapters/5. Ansible Roles.md#5-ansible-roles>)
    - ### [5.1 What Are Ansible Roles?](<chapters/5. Ansible Roles.md#51-what-are-ansible-roles>)
    - ### [5.2 Ansible Roles Structure](<chapters/5. Ansible Roles.md#52-ansible-roles-structure>)
    - ### [5.3 Analyzing an Ansible Role Setup](<chapters/5. Ansible Roles.md#53-analyzing-an-ansible-role-setup>)
      - ### [5.3.1 Roles' Files and Structure](<chapters/5. Ansible Roles.md#531-roles-files-and-structure>)
      - ### [5.3.2 Variables and Scope](<chapters/5. Ansible Roles.md#532-variables-and-scope>)
      - ### [5.3.3 Running Ansible Roles](<chapters/5. Ansible Roles.md#533-running-ansible-roles>)
    - ### [5.4 Ansible Galaxy](<chapters/5. Ansible Roles.md#54-ansible-galaxy>)
      - ### [5.4.1 Galaxy Website](<chapters/5. Ansible Roles.md#541-galaxy-website>)
      - ### [5.4.2 The `ansible-galaxy` Command](<chapters/5. Ansible Roles.md#542-the-ansible-galaxy-command>)
  - ## [6. Links and Resources](<chapters/6. Links and Resources.md#6-links-and-resources>)

<br>
<br>

---
***Author:***
<br>
*Helvecio Neto (<helveciofneto@gmail.com>)*

---
