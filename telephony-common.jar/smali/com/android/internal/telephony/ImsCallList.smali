.class public final Lcom/android/internal/telephony/ImsCallList;
.super Ljava/lang/Object;
.source "ImsCallList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsCallList$ImsCall;
    }
.end annotation


# instance fields
.field private blacklist mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

.field private blacklist mImsCallCount:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 26
    new-array v0, v0, [Lcom/android/internal/telephony/ImsCallList$ImsCall;

    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 26
    new-array v0, v0, [Lcom/android/internal/telephony/ImsCallList$ImsCall;

    iput-object v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-eqz p1, :cond_8

    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_7

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/Connection;

    if-nez v4, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->getParticipants()Ljava/util/List;

    move-result-object v5

    .line 42
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 44
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/internal/ConferenceParticipant;

    .line 45
    invoke-virtual {v8}, Lcom/android/ims/internal/ConferenceParticipant;->getState()I

    move-result v8

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v0

    .line 51
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/ConnectionBase;->isMidCallSupport()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v6, :cond_5

    move-object v6, v4

    check-cast v6, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 52
    invoke-virtual {v6}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v8, :cond_4

    goto :goto_3

    .line 55
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/internal/ConferenceParticipant;

    .line 56
    iget-object v7, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    add-int/lit8 v8, v2, 0x1

    new-instance v9, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    invoke-direct {v9, v4, v6}, Lcom/android/internal/telephony/ImsCallList$ImsCall;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V

    aput-object v9, v7, v2

    move v2, v8

    goto :goto_2

    .line 53
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    add-int/lit8 v6, v2, 0x1

    new-instance v8, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    invoke-direct {v8, v4, v7}, Lcom/android/internal/telephony/ImsCallList$ImsCall;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V

    aput-object v8, v5, v2

    :goto_4
    move v2, v6

    goto :goto_0

    .line 60
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    add-int/lit8 v6, v2, 0x1

    new-instance v8, Lcom/android/internal/telephony/ImsCallList$ImsCall;

    invoke-direct {v8, v4, v7}, Lcom/android/internal/telephony/ImsCallList$ImsCall;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/ims/internal/ConferenceParticipant;)V

    aput-object v8, v5, v2

    goto :goto_4

    :cond_7
    move v0, v2

    .line 64
    :cond_8
    iput v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    .line 69
    instance-of v0, p1, Lcom/android/internal/telephony/ImsCallList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    check-cast p1, Lcom/android/internal/telephony/ImsCallList;

    .line 75
    iget v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    iget v2, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    iget p0, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method blacklist toSehImsCallList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehImsCall;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 96
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-ge v1, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/ImsCallList$ImsCall;->toSehImsCall()Lvendor/samsung/hardware/radio/V2_0/SehImsCall;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    const-string v1, "{Total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    iget v1, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-lez v1, :cond_0

    .line 109
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 110
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCallCount:I

    if-ge v1, v2, :cond_0

    .line 111
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsCallList;->mImsCall:[Lcom/android/internal/telephony/ImsCallList$ImsCall;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
