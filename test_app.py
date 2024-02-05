
from app import read_cows

# Write a test case for the above function.
def test_read_cows():
    cows = read_cows()
    assert len(cows) == 4
    assert cows[1][0] == '1'
    assert cows[1][1] == 'bessie'
    assert cows[1][2] == 'moo'
