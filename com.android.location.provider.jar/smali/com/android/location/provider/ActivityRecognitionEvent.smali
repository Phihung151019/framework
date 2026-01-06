.class public Lcom/android/location/provider/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"


# instance fields
.field private final mActivity:Ljava/lang/String;

.field private final mEventType:I

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    .line 31
    iput-wide p3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    .line 32
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 49
    iget v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    .line 60
    const-string v0, "<Invalid>"

    .local v0, "eventString":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Exit"

    .line 55
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Enter"

    .line 52
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "FlushComplete"

    .line 58
    .restart local v0    # "eventString":Ljava/lang/String;
    nop

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    iget v2, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    .line 69
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 64
    const-string v2, "Activity=\'%s\', EventType=%s(%s), TimestampNs=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
