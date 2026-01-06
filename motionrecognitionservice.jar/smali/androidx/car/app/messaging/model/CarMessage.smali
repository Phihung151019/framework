.class public Landroidx/car/app/messaging/model/CarMessage;
.super Ljava/lang/Object;
.source "CarMessage.java"


# annotations
.annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/messaging/model/CarMessage$Builder;
    }
.end annotation


# instance fields
.field private final mBody:Landroidx/car/app/model/CarText;

.field private final mIsRead:Z

.field private final mReceivedTimeEpochMillis:J

.field private final mSender:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mSender:Landroid/os/Bundle;

    .line 86
    new-instance v0, Landroidx/car/app/model/CarText$Builder;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/car/app/model/CarText$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/car/app/model/CarText$Builder;->build()Landroidx/car/app/model/CarText;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mBody:Landroidx/car/app/model/CarText;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mReceivedTimeEpochMillis:J

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mIsRead:Z

    .line 89
    return-void
.end method

.method constructor <init>(Landroidx/car/app/messaging/model/CarMessage$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroidx/car/app/messaging/model/CarMessage$Builder;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Landroidx/car/app/messaging/model/CarMessage$Builder;->mSender:Landroidx/core/app/Person;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/car/app/messaging/model/CarMessage$Builder;->mSender:Landroidx/core/app/Person;

    invoke-static {v0}, Landroidx/car/app/messaging/model/ConversationItem;->validateSender(Landroidx/core/app/Person;)Landroidx/core/app/Person;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mSender:Landroid/os/Bundle;

    .line 78
    iget-object v0, p1, Landroidx/car/app/messaging/model/CarMessage$Builder;->mBody:Landroidx/car/app/model/CarText;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/model/CarText;

    iput-object v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mBody:Landroidx/car/app/model/CarText;

    .line 79
    iget-wide v0, p1, Landroidx/car/app/messaging/model/CarMessage$Builder;->mReceivedTimeEpochMillis:J

    iput-wide v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mReceivedTimeEpochMillis:J

    .line 80
    iget-boolean v0, p1, Landroidx/car/app/messaging/model/CarMessage$Builder;->mIsRead:Z

    iput-boolean v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mIsRead:Z

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 61
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 62
    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Landroidx/car/app/messaging/model/CarMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 65
    return v2

    .line 67
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/car/app/messaging/model/CarMessage;

    .line 69
    .local v1, "otherCarMessage":Landroidx/car/app/messaging/model/CarMessage;
    nop

    .line 70
    invoke-virtual {p0}, Landroidx/car/app/messaging/model/CarMessage;->getSender()Landroidx/core/app/Person;

    move-result-object v3

    invoke-virtual {v1}, Landroidx/car/app/messaging/model/CarMessage;->getSender()Landroidx/core/app/Person;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/car/app/messaging/model/PersonsEqualityHelper;->arePersonsEqual(Landroidx/core/app/Person;Landroidx/core/app/Person;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/car/app/messaging/model/CarMessage;->mBody:Landroidx/car/app/model/CarText;

    iget-object v4, v1, Landroidx/car/app/messaging/model/CarMessage;->mBody:Landroidx/car/app/model/CarText;

    .line 71
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/car/app/messaging/model/CarMessage;->mReceivedTimeEpochMillis:J

    iget-wide v5, v1, Landroidx/car/app/messaging/model/CarMessage;->mReceivedTimeEpochMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/car/app/messaging/model/CarMessage;->mIsRead:Z

    iget-boolean v4, v1, Landroidx/car/app/messaging/model/CarMessage;->mIsRead:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 69
    :goto_0
    return v0
.end method

.method public getBody()Landroidx/car/app/model/CarText;
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mBody:Landroidx/car/app/model/CarText;

    return-object v0
.end method

.method public getReceivedTimeEpochMillis()J
    .locals 2

    .line 111
    iget-wide v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mReceivedTimeEpochMillis:J

    return-wide v0
.end method

.method public getSender()Landroidx/core/app/Person;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mSender:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mSender:Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 51
    nop

    .line 52
    invoke-virtual {p0}, Landroidx/car/app/messaging/model/CarMessage;->getSender()Landroidx/core/app/Person;

    move-result-object v0

    invoke-static {v0}, Landroidx/car/app/messaging/model/PersonsEqualityHelper;->getPersonHashCode(Landroidx/core/app/Person;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/car/app/messaging/model/CarMessage;->mBody:Landroidx/car/app/model/CarText;

    iget-wide v2, p0, Landroidx/car/app/messaging/model/CarMessage;->mReceivedTimeEpochMillis:J

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/car/app/messaging/model/CarMessage;->mIsRead:Z

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Landroidx/car/app/messaging/model/CarMessage;->mIsRead:Z

    return v0
.end method
