using System;
using System.Collections.Generic;
using System.Text;

namespace Api.Applicatio.Common
{
    public enum RecordStatus
    {
        SUCCESS = 1,
        DUPLICATE_RECORD,
        NOT_EXISTS,
        BLOCKED,
        UNKNOWN,
        NEW_ENTRY,
        UPDATE_ENTRY
    }
}
