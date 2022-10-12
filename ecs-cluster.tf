resource "aws_ecs_cluster" "dev" {
  name = var.cluster_name
}

resource "aws_ecs_cluster_capacity_providers" "dev" {
  cluster_name       = aws_ecs_cluster.dev.name
  capacity_providers = ["FARGATE"]
}
