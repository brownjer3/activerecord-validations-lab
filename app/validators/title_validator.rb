class TitleValidator < ActiveModel::Validator

    def validate(record)
        if !record.title.nil?
            unless ["Won't Believe", "Secret", "Top ", "Guess"].any? {|phrase| record.title.include?(phrase)}
                record.errors[:title] << "Not Clickbait-y enough!"
            end
        end
        # unless record.email.match?(/["Won't Believe", "Secret", "Top ", "Guess"]/)
        #     record.errors[:title] << "Not Clickbait-y enough!"
        # end
    end

end