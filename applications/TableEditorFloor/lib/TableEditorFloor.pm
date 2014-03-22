package TableEditorFloor;
use Dancer ':syntax';
use Dancer::Plugin::Form;
use Dancer::Plugin::Interchange6;
use Dancer::Plugin::Interchange6::Routes;
use Dancer::Plugin::DBIC;
use Dancer::Plugin::Auth::Extensible qw(
logged_in_user authenticate_user user_has_role require_role
require_login require_any_role
);

our $VERSION = '0.1';

# connect DBIC session engine to our schema
set session_options => {schema => schema};

get '/' => sub {
    template 'index';
};

get '/demo' => sub {
    template 'demo';
};

get '/the-code' => sub {
    template 'the-code';
};

get '/documentation' => sub {
    template 'documentation';
};

get '/support' => sub {
    template 'support';
};

get '/visit-us' => sub {
    template 'visit-us';
};

true;
