from unittest.mock import patch
from main import main


@patch("builtins.print")
def test_main_should_call_print_with_correct_content(mock_print):
    main()
    mock_print.assert_any_call("Hello python!")
