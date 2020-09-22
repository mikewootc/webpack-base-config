#!/bin/bash

dev_items=''
run_items=''

while getopts "bks" arg
do
    case $arg in
        b) # babel相关依赖
            dev_items="${items} babel-core@6.26.3"
            dev_items="${items} babel-loader@7.1.4"
            dev_items="${items} babel-plugin-transform-decorators-legacy@1.3.5"
            dev_items="${items} babel-plugin-transform-es2015-modules-commonjs@6.26.2"
            dev_items="${items} babel-plugin-transform-regenerator@6.26.0"
            dev_items="${items} babel-plugin-transform-runtime@6.23.0"
            dev_items="${items} babel-preset-es2015@6.24.1"
            dev_items="${items} babel-preset-react@6.24.1"
            dev_items="${items} babel-preset-stage-1@6.24.1"
            dev_items="${items} babel-preset-stage-3@6.24.1"
            ;;
        k) # koa相关依赖
            run_items="${items} koa"
            run_items="${items} koa-bodyparser@^4.2.1"
            run_items="${items} koa-compress@^3.0.0"
            run_items="${items} koa-mount@^4.0.0"
            run_items="${items} koa-proxies@^0.8.1"
            run_items="${items} koa-proxy@^0.9.0"
            run_items="${items} koa-router@^7.4.0"
            run_items="${items} koa-router-static@^1.2.0"
            run_items="${items} koa-serve-list@^1.0.1"
            run_items="${items} koa-static@^5.0.0"
            ;;
        s) # babel相关依赖
            dev_items="${items} style-loader@^1.1.3"
            dev_items="${items} css-loader@^3.4.2"
            dev_items="${items} less-loader@^6.0.0"
            ;;
        ?)  # Unknown arg
            echo -e "\033[01;31mInvalid argument\033[0m"
            exit 1
            ;;
    esac
done

if [ ${dev_items} ]; then
    echo -e "\033[01;34mdev_items:\033[0m ${dev_items}"
    yarn add -D ${dev_items}
fi

if [ ${run_items} ]; then
    echo -e "\033[01;34mrun_items:\033[0m ${run_items}"
    yarn add -D ${run_items}
fi


# vim:set tw=0:
