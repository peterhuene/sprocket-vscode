## # Hello
## ## World
##
## This is some **bold** and `code` text.
##
#@ except: CommentWhitespace, DeprecatedObject, DescriptionMissing
#@ except: InputSorting, MatchingParameterMeta, NonmatchingOutput

version 1.2

#@ except: MissingMetas
struct AStruct {
   String member
}

## # Here are some more
## _double_ pound lines.

task a_task {
   meta
   # Here is a comment between `meta` and the parenthesis.
   {
      # Here is a comment within `meta`.
      an_escaped_string: "bar \\ \n \t \' \" \~ \$ \000 \xFF \uFFFF \UFFFFFFFF"
      a_true: true
      a_false: false
      an_integer: 42
      a_float: -0.0e123
      an_array: [true, -42, "hello, world"]
      an_object: {
         subkey_one: "a",
         subkey_two: 73,
         subkey_three: true,
         subkey_four: false,
      }
      an_undefined_value: null
   }

   parameter_meta
   # Here is a comment between `parameter_meta` and the parenthesis.
   {
      # Here is a comment within `parameter_meta`.
      an_escaped_string: "bar \\ \n \t \' \" \~ \$ \000 \xFF \uFFFF \UFFFFFFFF"
      a_true: true
      a_false: false
      an_integer: 42
      a_float: -0.0e123
      an_array: [true, -42, "hello, world"]
      an_object: {
         subkey_one: "a",
         subkey_two: 73,
         subkey_three: true,
         subkey_four: false,
      }
      an_undefined_value: null
   }

   input
   # Here is a comment before the input.
   {
      Object an_object
      String a_string
      Boolean a_boolean
      Int an_integer
      Float a_float
      AStruct a_struct # This should not be higlighted, as it's not known within
                       # the TextMate language that it's a custom struct.
   }

   output
   # Here is a comment before the output.
   {
      Object some_other_object = {}
      String some_other_string = "foo bar baz"
      Boolean some_other_boolean = true
      Int some_other_integer = 42
      Float some_other_float = 0e3
      # This should not be higlighted, as it's not known within
      # the TextMate language that it's a custom struct.
      AStruct some_other_struct = AStruct {}
   }

   requirements
   # This is a comment before the requirements.
   {
      container: "ubuntu:latest"
   }

   hints
   # This is a comment before the hints.
   {
      max_cpu: 1
   }

   runtime
   # Here is a comment before the runtime.
   {
      container: "ubuntu:latest"
   }
}

workflow hello {
   meta
   # Here is a comment between `meta` and the parenthesis.
   {
      # Here is a comment within `meta`.
      an_escaped_string: "bar \\ \n \t \' \" \~ \$ \000 \xFF \uFFFF \UFFFFFFFF"
      a_true: true
      a_false: false
      an_integer: 42
      a_float: -0.0e123
      an_array: [true, -42, "hello, world"]
      an_object: {
         subkey_one: "a",
         subkey_two: 73,
         subkey_three: true,
         subkey_four: false,
      }
      an_undefined_value: null
   }

   parameter_meta
   # Here is a comment between `parameter_meta` and the parenthesis.
   {
      # Here is a comment within `parameter_meta`.
      an_escaped_string: "bar \\ \n \t \' \" \~ \$ \000 \xFF \uFFFF \UFFFFFFFF"
      a_true: true
      a_false: false
      an_integer: 42
      a_float: -0.0e123
      an_array: [true, -42, "hello, world"]
      an_object: {
         subkey_one: "a",
         subkey_two: 73,
         subkey_three: true,
         subkey_four: false,
      }
      an_undefined_value: null
   }

   input {
      Object an_object
      String a_string
      Boolean a_boolean
      Int an_integer
      Float a_float
      AStruct a_struct # This should not be higlighted, as it's not known within
                       # the TextMate language that it's a custom struct.
   }

   call a_task as something {

   }

   scatter (name in name_array) {
      call say_task { greeting = greeting }
   }

   if (some_condition_task) {
      call a_task as task_two {}
   }

   output
   # Here is a comment before the output.
   {
      Object some_other_object = {}
      String some_other_string = "foo bar baz"
      Boolean some_other_boolean = true
      Int some_other_integer = 42
      Float some_other_float = 0e3
      # This should not be higlighted, as it's not known within
      # the TextMate language that it's a custom struct.
      AStruct some_other_struct = AStruct {}
   }
}