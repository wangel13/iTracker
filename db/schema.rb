# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170207202154) do

  create_table "epics", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sprint_teams", force: :cascade do |t|
    t.integer  "sprint_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sprint_id"], name: "index_sprint_teams_on_sprint_id"
    t.index ["team_id"], name: "index_sprint_teams_on_team_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "status_id"
    t.integer  "priority_id"
    t.integer  "epic_id"
    t.string   "header"
    t.text     "body"
    t.boolean  "is_trash"
    t.datetime "estimate"
    t.datetime "remaining_estimate"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "assigned_to_id"
    t.index ["assigned_to_id"], name: "index_tasks_on_assigned_to_id"
    t.index ["epic_id"], name: "index_tasks_on_epic_id"
    t.index ["priority_id"], name: "index_tasks_on_priority_id"
    t.index ["status_id"], name: "index_tasks_on_status_id"
  end

  create_table "team_users", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_users_on_team_id"
    t.index ["user_id"], name: "index_team_users_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.text     "description"
    t.integer  "team_hours"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "work_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
