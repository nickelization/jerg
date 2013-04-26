%%
%% Generated by jerg v1.0
%%
%% DO NOT EDIT - CHANGES WILL BE OVERWRITTEN!
%%

% Monetary price
% Intended to be used embedded in other schemas
-record(price,
        {
            currency_code :: binary(),
            amount        :: number()
        }).

% Product (Short View)
% Intended to be used in search results
-record(product_short,
        {
            % Numeric object identity, set to -1 at creation time
            id             = -1 :: integer(),
            name                :: binary(),
            list_price          :: #price{},
            discount_price      :: #price{}
        }).

% Product Category
-record(product_category,
        {
            % Numeric object identity, set to -1 at creation time
            id   = -1 :: integer(),
            name      :: binary()
        }).

% Product (Full View)
% Intended to be used when full description is needed
-record(product_full,
        {
            % Numeric object identity, set to -1 at creation time
            id             = -1 :: integer(),
            name                :: binary(),
            list_price          :: #price{},
            discount_price      :: #price{},
            description         :: binary(),
            categories          :: list(#product_category{})
        }).

