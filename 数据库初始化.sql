-- 电影后台管理系统数据库初始化脚本
-- 创建数据库
CREATE DATABASE IF NOT EXISTS movie_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE movie_db;

-- 注意：表结构将由JPA自动创建，这里只提供初始化数据脚本

-- 插入默认管理员用户（密码：admin123）
INSERT INTO users (username, password, real_name, role, create_time, update_time)
VALUES ('movieadmin', 'admin123', '系统管理员', 'ADMIN', NOW(), NOW())
ON DUPLICATE KEY UPDATE username = username;

-- 插入默认分类
INSERT INTO categories (name, description, create_time, update_time)
VALUES 
    ('动作', '动作类电影', NOW(), NOW()),
    ('喜剧', '喜剧类电影', NOW(), NOW()),
    ('爱情', '爱情类电影', NOW(), NOW()),
    ('科幻', '科幻类电影', NOW(), NOW()),
    ('恐怖', '恐怖类电影', NOW(), NOW())
ON DUPLICATE KEY UPDATE name = name;





