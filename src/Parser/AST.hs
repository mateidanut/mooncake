module Parser.AST where

data Expression =
  -- Literals
    Integer Integer
  | String String
  | Bool Bool
  | List [Expression]

  -- Functions
  | Function [String] Expression
  | FunctionCall String [Expression]

  -- Variable declaration
  | Let String Expression

  -- Reference to other expression
  | Identifier String

  -- Algebraic operations
  | Negative Expression
  | Positive Expression
  | Add Expression Expression 
  | Sub Expression Expression
  | Div Expression Expression
  | Mul Expression Expression
  | Modulo Expression Expression

  -- Comparison operations
  | Inverse Expression
  | Gt Expression Expression
  | GtE Expression Expression
  | Lt Expression Expression
  | LtE Expression Expression
  | Eq Expression Expression

  -- A couple of expressions
  | Block [Expression]
  deriving (Show)
