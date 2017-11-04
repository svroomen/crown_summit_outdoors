module Seeds
  # seeds all statuses
  class Statuses
    def self.seed_statuses
      pending_s
      paid
      processing
      shipped
      delivered
    end

    def self.pending_s
      Status.where(title: 'Pending').first_or_create!(
        description: 'Order has not been submitted'
      )
    end

    def self.paid
      Status.where(title: 'Paid').first_or_create!(
        description: 'Order has been submitted and paid'
      )
    end

    def self.processing
      Status.where(title: 'Processing').first_or_create!(
        description: 'Order is being processed and prepared for shipping'
      )
    end

    def self.shipped
      Status.where(title: 'Shipped').first_or_create!(
        description: 'Order has been shipped'
      )
    end

    def self.delivered
      Status.where(title: 'Delivered').first_or_create!(
        description: 'Order has been delivered'
      )
    end

    private_class_method :pending_s, :paid, :processing,
                         :shipped, :delivered
  end
end