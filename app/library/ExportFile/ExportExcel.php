<?php

namespace App\Library\ExportFile;

use App\Library\ExportFile\Export;

class ExportExcel extends Export
{

    /**
     *
     * @var type 
     */
    private $objPhpExcel;
    private $title;

    /**
     * 
     * @param type $options
     */
    public function __construct()
    {
        $this->objPhpExcel = new \PHPExcel();
    }

    /**
     * 
     * @param type $creator
     * @return type
     */
    protected function setCreator($creator)
    {
        if (isset($creator['creator'])) {
            $this->objPhpExcel->getProperties()->setCreator($creator['creator'])
                    ->setLastModifiedBy($creator['creator']);
            return $this;
        }
        $this->objPhpExcel->getProperties()->setCreator('Intranet - Grupo MPE')
                ->setLastModifiedBy('Intranet - Grupo MPE');
        return $this;
    }

    /**
     * 
     * @param type $title
     * @return type
     */
    protected function setTitle($title)
    {
        if (isset($title['title'])) {
            $this->objPhpExcel->getProperties()->setTitle($title['title']);
            $this->title = $title['title'];
            return $this;
        }
        $this->objPhpExcel->getProperties()->setTitle('Relatório');
        $this->title = 'Relatório';
        return $this;
    }

    /**
     * 
     * @param type $category
     * @return type
     */
    protected function setCategory($category)
    {
        if (isset($category['category'])) {
            $this->objPhpExcel->getProperties()->setCategory($category['category']);
            return $this;
        }
        $this->objPhpExcel->getProperties()->setCategory('Relatórios');
        return $this;
    }

    /**
     * 
     * @param type $locale
     */
    protected function setLocale($locale)
    {
        $loc = 'pt_br';
        if (isset($locale['locale'])) {
            $loc = $locale['locale'];
        }

        $validLocale = \PHPExcel_Settings::setLocale($loc);
        if (!$validLocale) {
            echo 'Não é possível definir a localidade para ' . $loc . ' - revertendo para en_us.' . PHP_EOL;
        }
    }

    /**
     * 
     * @param type $dados
     * @param type $questions
     * @param type $options
     * @return type
     */
    public function writeFileExcel($dados, $questions = '', $options = [])
    {
        $this->prepareObjectExcel($options);
        if (!empty($questions)) {
            $this->filters($questions);
        }
        $this->report($dados);

        //$this->viewExcel();exit;
        return $this->objPhpExcel;
    }

    private function prepareObjectExcel($options)
    {
        $this->setLocale($options);
        $this->setCreator($options);
        $this->setTitle($options);
        $this->setCategory($options);
    }

    private function filters($questions)
    {
        $this->objPhpExcel->getActiveSheet()->setTitle('Filtros');
        $this->objPhpExcel->getActiveSheet()->setCellValue('A1', $this->title);
        $this->objPhpExcel->getActiveSheet()->setCellValue('A3', 'Filtros:');
        $this->objPhpExcel->getActiveSheet()->fromArray($questions, null, 'A4');
        $this->objPhpExcel->getActiveSheet()->getDefaultColumnDimension()->setAutoSize(true);
    }

    private function report($dados)
    {
        $i = 0;

        foreach ($dados as $title => $value) {
            $i++;

            $this->objPhpExcel->createSheet();
            $this->objPhpExcel->setActiveSheetIndex($i);
            $this->objPhpExcel->getActiveSheet()->setTitle($title);
            $this->objPhpExcel->getActiveSheet()->fromArray($value, null, 'A1');
            //$this->objPhpExcel->getActiveSheet()->getDefaultColumnDimension('A:N')->setAutoSize(true);
        }
        $this->objPhpExcel->setActiveSheetIndex(0);
    }

    private function getColunns($width)
    {
        $colunns = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        return $colunns[$width - 1];
    }

    private function styleCell($position, $type = 'normal')
    {
        $style = [];
        switch ($type) {
            case 'title':
                $style = $this->styleTitle();
                break;
            case 'bold':
                $style = $this->styleBold();
                break;
            case 'header':
                $style = $this->styleHeader();
                break;

            default:
                $style = $this->styleNormal();
                break;
        }

        $this->objPhpExcel->getActiveSheet()->getStyle($position)->applyFromArray($style);
    }

    private function styleTitle()
    {
        return [
            'font' => [
                'bold' => true,
                'italic' => true,
                'size' => 14,
                'color' => ['rgb' => '000000'],
            ],
            'alignment' => [
                'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
                'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER,
                'rotation' => 0,
                'wrap' => false
            ],
            'borders' => [
                'allborders' => [
                    'style' => \PHPExcel_Style_Border::BORDER_MEDIUM,
                    'color' => ['rgb' => '000000'],
                ],
            ],
            'fill' => [
                'type' => \PHPExcel_Style_Fill::FILL_SOLID,
                'color' => ['rgb' => 'FFFFFF'],
            ],
        ];
    }

    private function styleHeader()
    {
        return [
            'font' => [
                'bold' => true,
                'italic' => true,
                'size' => 13,
                'color' => ['rgb' => '000000'],
            ],
            'alignment' => [
                'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_CENTER,
                'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER,
                'rotation' => 0,
                'wrap' => false
            ],
            'borders' => [
                'allborders' => [
                    'style' => \PHPExcel_Style_Border::BORDER_MEDIUM,
                    'color' => ['rgb' => '000000'],
                ],
            ],
            'fill' => [
                'type' => \PHPExcel_Style_Fill::FILL_GRADIENT_PATH,
                'rotation' => 90,
                'startcolor' => ['argb' => 'FF4caf50'],
                'endcolor' => ['argb' => 'FF1f8223'],
            ],
        ];
    }

    private function styleBold()
    {

        return [
            'font' => [
                'bold' => true,
                'size' => 12,
                'color' => ['rgb' => '000000'],
            ],
            'alignment' => [
                'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_LEFT,
                'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER,
                'rotation' => 0,
                'wrap' => false
            ],
            'borders' => [
                'allborders' => [
                    'style' => \PHPExcel_Style_Border::BORDER_NONE,
                ],
            ],
            'fill' => [
                'type' => \PHPExcel_Style_Fill::FILL_NONE,
            ],
        ];
    }

    private function styleNormal()
    {

        return [
            'font' => [
                'size' => 11,
                'color' => ['rgb' => '000000'],
            ],
            'alignment' => [
                'horizontal' => \PHPExcel_Style_Alignment::HORIZONTAL_LEFT,
                'vertical' => \PHPExcel_Style_Alignment::VERTICAL_CENTER,
                'rotation' => 0,
                'wrap' => false
            ],
            'borders' => [
                'allborders' => [
                    'style' => \PHPExcel_Style_Border::BORDER_THIN,
                    'color' => ['rgb' => '000000'],
                ],
            ],
            'fill' => [
                'type' => \PHPExcel_Style_Fill::FILL_NONE,
            ],
        ];
    }

    private function setStyleBySheet($sheet)
    {
        $function = 'sheet0' . $sheet;

        $this->objPhpExcel->setActiveSheetIndex($sheet);
        $this->$function();
    }

    private function sheet01()
    {
        $merged = 'A1:N1';
        $this->objPhpExcel->getActiveSheet()->mergeCells($merged);
    }

    protected function downloadExcel()
    {
        $fileName = $this->title . date('Ymd His') . '.xlsx';

        $fileTemp = tempnam(getcwd() . '/temp/', 'phpexcel');
        $objWriter = \PHPExcel_IOFactory::createWriter($this->objPhpExcel, 'Excel2007');
        $objWriter->save($fileTemp);

        return parent::download($fileName, $fileTemp);
    }

    private function viewExcel()
    {

        $this->objPhpExcel->setActiveSheetIndex(0);

        $objWorksheet = $this->objPhpExcel->getActiveSheet();
        echo '<table>' . PHP_EOL;
        foreach ($objWorksheet->getRowIterator() as $row) {
            echo '<tr>' . PHP_EOL;
            $cellIterator = $row->getCellIterator();
            $cellIterator->setIterateOnlyExistingCells(FALSE);
            foreach ($cellIterator as $cell) {
                echo '<td>' .
                $cell->getValue() .
                '</td>' . PHP_EOL;
            }
            echo '</tr>' . PHP_EOL;
        }
        echo '</table>' . PHP_EOL;
    }

}
