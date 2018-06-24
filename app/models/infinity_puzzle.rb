class InfinityPuzzle < ActiveRecord::Base
  belongs_to :infinity_level
  belongs_to :new_lichess_puzzle

  validates :new_lichess_puzzle, presence: true

  default_scope { order('index ASC') }

  delegate :fen, :initial_move, :initial_move_uci, :simplified_data,
           to: :new_lichess_puzzle

  alias puzzle new_lichess_puzzle
end
