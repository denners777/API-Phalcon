<?php

/**
 * Description of NotFoundPlugin
 *
 * @author denner.fernandes
 */

namespace System\Plugins;

use Phalcon\Events\Event;
use Phalcon\Mvc\User\Plugin;
use Phalcon\Dispatcher;
use Phalcon\Mvc\Dispatcher\Exception as DispatcherException;
use Phalcon\Mvc\Dispatcher as MvcDispatcher;

/**
 * NotFoundPlugin
 *
 * Handles not-found controller/actions
 */
class NotFound extends Plugin {

  /**
   * This action is executed before execute any action in the application
   *
   * @param Event $event
   * @param MvcDispatcher $dispatcher
   * @param Exception $exception
   * @return boolean
   */
  public function beforeException(Event $event, MvcDispatcher $dispatcher, \Phalcon\Exception $exception) {
    error_log($exception->getMessage() . PHP_EOL . $exception->getTraceAsString());
    if ($exception instanceof DispatcherException) {
      switch ($exception->getCode()) {
        case Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:
        case Dispatcher::EXCEPTION_ACTION_NOT_FOUND:
          $this->response->redirect('nucleo/index/show404');
          return false;
      }
    }
    $this->response->redirect('nucleo/index/show500');
    return false;
  }

}
