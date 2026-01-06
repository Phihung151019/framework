.class public Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;
.super Ljava/lang/Object;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataRetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataRetryEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;
    }
.end annotation


# static fields
.field public static final blacklist RETRY_STATE_CANCELLED:I = 0x4

.field public static final blacklist RETRY_STATE_FAILED:I = 0x2

.field public static final blacklist RETRY_STATE_NOT_RETRIED:I = 0x1

.field public static final blacklist RETRY_STATE_SUCCEEDED:I = 0x3


# instance fields
.field public final blacklist appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

.field protected blacklist mRetryState:I

.field protected blacklist mRetryStateTimestamp:J

.field public final blacklist retryDelayMillis:J

.field public final blacklist retryElapsedTime:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;J)V
    .locals 2

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 626
    iput v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->mRetryState:I

    .line 639
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    .line 640
    iput-wide p2, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryDelayMillis:J

    .line 642
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->mRetryStateTimestamp:J

    add-long/2addr v0, p2

    .line 643
    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    return-void
.end method

.method public static blacklist retryStateToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 675
    :cond_0
    const-string p0, "CANCELLED"

    return-object p0

    .line 674
    :cond_1
    const-string p0, "SUCCEEDED"

    return-object p0

    .line 673
    :cond_2
    const-string p0, "FAILED"

    return-object p0

    .line 672
    :cond_3
    const-string p0, "NOT_RETRIED"

    return-object p0
.end method


# virtual methods
.method public blacklist getState()I
    .locals 0

    .line 661
    iget p0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->mRetryState:I

    return p0
.end method

.method public blacklist setState(I)V
    .locals 2

    .line 652
    iput p1, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->mRetryState:I

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->mRetryStateTimestamp:J

    return-void
.end method
