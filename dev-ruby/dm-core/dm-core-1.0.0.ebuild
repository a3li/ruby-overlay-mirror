# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC="yard"
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README.rdoc"

RUBY_FAKEGEM_TASK_TEST="spec"

inherit ruby-fakegem

DESCRIPTION="An Object/Relational Mapper for Ruby"
HOMEPAGE="http://datamapper.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

# Requires do_sqlite3 which we do not have packaged yet.  In 1.0.0
# tests fail altogether. Should be fixed before moving to main tree.
RESTRICT="test"

ruby_add_bdepend "doc? ( dev-ruby/jeweler dev-ruby/yard )"
ruby_add_bdepend "test? ( dev-ruby/jeweler dev-ruby/rspec )"

ruby_add_rdepend "
	>=dev-ruby/extlib-0.9.15
	>=dev-ruby/addressable-2.1"
