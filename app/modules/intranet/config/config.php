<?php

return new \Phalcon\Config([
    'application' => [
        'controllersDir' => APP_PATH . '/app/modules/intranet/controllers/',
        'modelsDir' => APP_PATH . '/app/modules/intranet/models/',
        'migrationsDir' => APP_PATH . '/app/modules/intranet/migrations/',
        'formsDir' => APP_PATH . '/app/modules/intranet/forms/',
    ],
          ]);
