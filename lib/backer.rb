class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backers_all = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        backers_all.map do |b|
            b.project
        end
    end
end