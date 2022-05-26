using System.Collections.Generic;
namespace Api.Applicatio.Common
{
    public class ViewResponseModal<T>
    {
        public T Entity { get; set; }
        public RecordStatus Status { get; set; }
        public List<Validation> Validations { get; set; }
        public string Message { get; set; }

        public ViewResponseModal(T Entity)
        {
            this.Entity = Entity;
            this.Status = RecordStatus.UNKNOWN;
            this.Message = string.Empty;
        }

        public string Description
        {
            get
            {
                switch (this.Status)
                {
                    case RecordStatus.SUCCESS:
                        return "Operation performed Successfully";

                    case RecordStatus.DUPLICATE_RECORD:
                        return "Duplicated record exists";

                    case RecordStatus.UNKNOWN:
                        return "Unknown error occurred";

                    case RecordStatus.NOT_EXISTS:
                        return "Record does not exists";

                    case RecordStatus.BLOCKED:
                        return "Record is blocked";

                    case RecordStatus.NEW_ENTRY:
                        return "This is New, are you sure you want to add it ?";

                    default:
                        return "Internal Error occurred";
                }
            }
        }
    }
}