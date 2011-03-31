;; Jogo para adivinhar o número escolhido (de 1 a 100).
;; Cap 2 do Land of Lisp

(defparameter *inicio* 1)
(defparameter *fim* 10000)


(defun adivinhe ()
	(ash (+ *inicio* *fim*) -1)) ;;ash = aritimetic shift

(defun menor ()
	(setf *fim* (1- (adivinhe)))
	(adivinhe))

(defun maior ()
	(setf *inicio* (1- (adivinhe)))
	(adivinhe))

(defun reinicia ()
	(defparameter *inicio* 1  )
	(defparameter *fim*  10000)
	(adivinhe))
