.class public Lcom/android/internal/telephony/SemClientWakelockAccountant;
.super Lcom/android/internal/telephony/ClientWakelockAccountant;
.source "SemClientWakelockAccountant.java"


# static fields
.field public static final blacklist SEM_LOG_TAG:Ljava/lang/String; = "SemClientWakelockAccountant: "


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ClientWakelockAccountant;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V
    .locals 2

    .line 36
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/RilWakelockInfo;->setResponseTime(J)V

    .line 37
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    monitor-enter p2

    .line 38
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/telephony/ClientRequestStats;->addCompletedWakelockTime(J)V

    .line 39
    iget-object p3, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p3}, Landroid/telephony/ClientRequestStats;->incrementCompletedRequestsCount()V

    .line 40
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result p3

    .line 41
    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide v0

    long-to-int p1, v0

    .line 40
    invoke-virtual {p0, p3, p1}, Landroid/telephony/ClientRequestStats;->updateRequestHistograms(II)V

    .line 42
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;
    .locals 7

    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/internal/telephony/RilWakelockInfo;

    .line 19
    invoke-virtual {v5}, Lcom/android/internal/telephony/RilWakelockInfo;->getTokenNumber()I

    move-result v6

    if-ne v6, p2, :cond_0

    .line 20
    invoke-virtual {v5}, Lcom/android/internal/telephony/RilWakelockInfo;->getRilRequestSent()I

    move-result v6

    if-ne v6, p1, :cond_0

    move-object v3, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 25
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 29
    const-string v0, "SemClientWakelockAccountant: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for Request<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mPendingRilWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v3

    .line 27
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist stopAttributingWakelockInt(IIJ)I
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemClientWakelockAccountant;->removePendingWakelock(II)Lcom/android/internal/telephony/RilWakelockInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/SemClientWakelockAccountant;->completeRequest(Lcom/android/internal/telephony/RilWakelockInfo;J)V

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/telephony/RilWakelockInfo;->getWakelockTimeAttributedToClient()J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist toSimpleString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CallingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockAccountant;->mRequestStats:Landroid/telephony/ClientRequestStats;

    invoke-virtual {p0}, Landroid/telephony/ClientRequestStats;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
