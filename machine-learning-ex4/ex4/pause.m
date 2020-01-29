function pause(arg=[])
    % Fix pause in Octave 5.1.0
    if isempty(arg)
        fflush(stdout);
        input('', 's');
    else
        % This calls the built-in pause function instead of our override
        builtin('pause', arg)
    end
end