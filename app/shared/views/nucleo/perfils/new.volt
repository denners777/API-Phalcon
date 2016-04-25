{{ content() }}



<div class="card">
    <div class="card-header">
        <h2>Perfis <small>Insira os dados para criar um novo perfil.</small></h2>
    </div>

    <div class="card-body card-padding">
        {{ form("nucleo/perfils/create", "method":"post", "autocomplete" : "off") }}
        <div class="row">
            <div class="col-lg-5 col-lg-offset-1">
                <div class="form-group">
                    <div class="fg-line">
                        <div class="select">
                            <?php
                            echo $this->tag->select(['userId',
                                \Nucleo\Models\Users::find(),
                                'using' => ['id', 'name'],
                                'useEmpty' => true,
                                'emptyText' => 'Usuário (Escolha um Usuário ou um Grupo)',
                                'emptyValue' => '',
                                'class' => 'form-control']
                            );
                            ?>
                        </div>
                    </div>
                </div>
                <br />
            </div>

            <div class="col-lg-5">
                <div class="form-group">
                    <div class="fg-line">
                        <div class="select">
                            <?php
                            echo $this->tag->select(['groupId',
                                \Nucleo\Models\Groups::find(),
                                'using' => ['id', 'name'],
                                'useEmpty' => true,
                                'emptyText' => 'Grupo (Escolha um Usuário ou um Grupo)',
                                'emptyValue' => '',
                                'class' => 'form-control']
                            );
                            ?>
                        </div>
                    </div>
                </div>
                <br />
            </div>

            <div class="col-lg-5 col-lg-offset-1">
                <div class="form-group">
                    <div class="fg-line">
                        <div class="select">
                            <?php
                            echo $this->tag->select(['module',
                                \Nucleo\Models\Modules::find(),
                                'using' => ['id', 'name'],
                                'useEmpty' => true,
                                'emptyText' => 'Módulos (Escolha uma opção)',
                                'emptyValue' => '',
                                'class' => 'form-control',
                                'required' => 'required']
                            );
                            ?>
                        </div>
                    </div>
                </div>
                <br />
            </div>

            <div class="col-lg-5">
                <div class="form-group">
                    <div class="fg-line">
                        <div class="select">
                            <?php
                            echo $this->tag->select(['controller',
                                \Nucleo\Models\Controllers::find(),
                                'using' => ['id', 'title'],
                                'useEmpty' => true,
                                'emptyText' => 'Controller (Escolha uma opção)',
                                'emptyValue' => '',
                                'class' => 'form-control',
                                'required' => 'required']
                            );
                            ?>
                        </div>
                    </div>
                </div>
                <br />
            </div>

            <div class="col-lg-5 col-lg-offset-1">
                <div class="form-group">
                    <div class="fg-line">
                        <div class="select">
                            <?php
                            echo $this->tag->select(['action',
                                \Nucleo\Models\Actions::find(),
                                'using' => ['id', 'title'],
                                'useEmpty' => true,
                                'emptyText' => 'Ação (Escolha uma opção)',
                                'emptyValue' => '',
                                'class' => 'form-control',
                                'required' => 'required']
                            );
                            ?>
                        </div>
                    </div>
                </div>
                <br />
            </div>

            <div class="col-lg-5">
                <div class="form-group fg-float">
                    <div class="fg-line">
                        <div class="select">
                            <?php
                            echo $this->tag->selectStatic([
                                'permission', [
                                    'S' => 'Permitido',
                                    'N' => 'Proibido',
                                ], 'class' => 'form-control',
                                'required' => 'required'
                            ]);
                            ?>
                        </div>
                    </div>
                </div>
                <br />
            </div>
            <div class="col-lg-5 col-lg-offset-1">
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-sm m-t-10 waves-effect">Inserir</button>
                </div>
            </div>
        </div>
        {{ end_form() }}
    </div>