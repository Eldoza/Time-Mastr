require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard

  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    password: Field::String,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String.with_options(searchable: false),
    last_sign_in_ip: Field::String.with_options(searchable: false),
    first_name: Field::String.with_options(searchable: false),
    last_name: Field::String.with_options(searchable: false),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    type: Field::String.with_options(searchable: false),
    phone: Field::String.with_options(searchable: false),
    ssn: Field::Number.with_options(searchable: true),
    company: Field::String.with_options(searchable: false),
   }.freeze

COLLECTION_ATTRIBUTES = [
    :posts,
    :ssn,
    :email,   ].freeze


 SHOW_PAGE_ATTRIBUTES = [
   :posts,
    :ssn,
    :company,
    :email,
    :phone,
    :sign_in_count,
    :current_sign_in_at,
    :last_sign_in_at,
    :current_sign_in_ip,
    :last_sign_in_ip,
    :first_name,
    :last_name,
    :created_at,
    :updated_at,
    :type,   ].freeze

 FORM_ATTRIBUTES = [
    :email,
    :password,
    :first_name,
    :last_name,
    :ssn,
    :company,
    :type,
    :phone  ].freeze
  end
