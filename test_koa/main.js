'use strict'

const Koa        = require('koa');
const http       = require('http');

const app        = new Koa();

async function __main__() {
    const serverHttp = http.createServer(app.callback());

    let portHttp = 12345;
    serverHttp.listen(portHttp, () => {
        console.log('Start server @ port:', portHttp);
    });

    console.log('__main__, start.');
    app.use(ctx => {
        console.log('############');
        ctx.body = 'Hello Koa\n';
    });
}

if (require.main === module) {
    try {
        process.on('uncaughtException', function(err) {
            console.log('Error__ caught in uncaughtException:', err);
        });
        process.on('unhandledRejection', function(err) {
            console.log('Error__ caught in unhandledRejection:', err);
        });

        __main__();
    } catch(err) {
        console.log(err);
    }
}

// vim:set tw=0:
