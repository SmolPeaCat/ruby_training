# frozen_string_literal: true

family = {  uncles: %w[bob joe steve],
            sisters: %w[jane jill beth],
            brothers: %w[frank rob david],
            aunts: %w[mary sally susan]
          }

siblings = family.select {|id, val| %i[sisters brothers].include?(id)}
siblings = siblings.values.flatten
p siblings



