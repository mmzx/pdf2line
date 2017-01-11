{-# LANGUAGE ForeignFunctionInterface #-}
module Main where

--import Foreign.Storable
import Foreign.C
import Foreign.C.String
import Foreign.Ptr
import Foreign.Marshal.Alloc (free)

-- todo: review whether these foreign declarations are correct
foreign import ccall unsafe "pdfToText" pdfToText :: CString -> CString -> IO (Ptr a)
foreign import ccall "helloWorld" helloWorld :: Ptr a -> IO (Ptr a) -- reason for some testing fun

main = foo

foo = do
  pdfIn <- newCString "../test.pdf"
  a <- pdfToText nullPtr pdfIn
  b <- peekCString a
  putStrLn b
  free pdfIn

bar = do
  x <- helloWorld nullPtr
  y <- peekCString x
  print y
  free x

