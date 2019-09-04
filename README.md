# Provision devs <!-- omit in toc -->
開発用クライアントセットアップ用 playbook  
新しい開発端末に移行するときのメモ代わりに playbook 形式で残しておく

## Table Of Contents <!-- omit in toc -->

1. [Pre-provisioning](#pre-provisioning)
   1. [MacOS](#macos)
2. [Provisioning](#provisioning)
3. [References](#references)

## Pre-provisioning

### MacOS

1. Setup MacOS (Mojave or later).

   1. Open the AppStore
    
        ```sh
        open -a 'App Store'
        ```

        and sign-in (or sign-up) the AppStore by your apple account.

   2. Open the latest version of macOS with AppStore

        ```sh
        open macappstores://apps.apple.com/jp/app/macos-mojave/id1398502828
        ```

        and install it.
        
   3. Update system and restart it.
   
        ```sh
        sudo softwareupdate --install --recommended
        sudo shutdown -r now
        ```

2. Setup command line developer tools (or Xcode).

    1.  Open the latest version of Xcode with AppStore

        ```sh
        open macappstores://apps.apple.com/us/app/xcode/id497799835
        ```

        and install it.

    2.  Install command line developer tools.

        ```sh
        sudo xcode-select --install
        ```

    3.  Accept licences.

        ```sh
        sudo xcodebuild -license
        ```

3. Clone this repository.
   
    ```sh
    git clone https://github.com/TakashiSugawara/Provision-devs.git && cd Provision-devs
    ```

4. Run preprovisioning script.

    ```sh
    sh ./scripts/preprovision/main.sh
    ```

## Provisioning

1. Play the book.
    
    ```sh
    ansible-playbook -i localhost site.yml
    ```

## References

+ [Mac の開発環境構築を自動化する (2015 年初旬編)](https://t-wada.hatenablog.jp/entry/mac-provisioning-by-ansible)
+ [Mac OS Xの環境構築を自動化する(2016年度初旬編)](https://dev.classmethod.jp/server-side/ansible/automate-build-mac-osx-env-by-ansible/)
+ [mas-cliをAnsibleで管理する](https://qiita.com/yumiduka/items/9c095b9f98be96b8763c)