<?php


interface Command {
    function execute();
}

class FibonacciCommand implements Command {
    
    /**
     * limit of succession.
     * @var int 
     */
    private $limit;
    
    /**
     * initialize variables.
     * @param int $limit limit of succession.
     */
    function __construct($limit) {
        $this->limit = $limit;
    }

    /**
     * execute function.
     */
    public function execute() {
        echo "<p>Se calcula el n-ésimo término de la sucesión de Fibonacci<p>";
        for($i = 0; $i < $this->limit; $i++) {
            echo $this->funcionFibonacci($i) . ", ";
        }
    }
    
    /**
     * fibonacci function.
     * @param int $num number to calculate. 
     * @return int result.
     */
    private function funcionFibonacci($num): int {
        if($num == 0 || $num == 1) {
            return $num;
        } else {
            return $this->funcionFibonacci($num-1) + $this->funcionFibonacci($num-2);
        }
    }

}


$x = new FibonacciCommand(10);
$x->execute();
