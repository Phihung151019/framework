.class Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;
.super Ljava/lang/Object;
.source "CellBroadcastConfigTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellBroadcastConfigTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field blacklist mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCbRangesRequest3gpp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCbRangesRequest3gpp2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClient:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$9iEFhud5RlT9TEkXKyTZPxo4P-w(Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;Landroid/telephony/CellBroadcastIdRange;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->lambda$new$0(Landroid/telephony/CellBroadcastIdRange;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 115
    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCallback:Ljava/util/function/Consumer;

    .line 117
    iput-object p3, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mClient:Ljava/lang/String;

    return-void
.end method

.method private synthetic blacklist lambda$new$0(Landroid/telephony/CellBroadcastIdRange;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastIdRange;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method blacklist get3gpp2Ranges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    return-object p0
.end method

.method blacklist get3gppRanges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellBroadcastIdRange;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    return-object p0
.end method

.method blacklist getCallback()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method blacklist getClient()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mClient:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request[mCbRangesRequest3gpp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCbRangesRequest3gpp2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCbRangesRequest3gpp2:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mCallback:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastConfigTracker$Request;->mClient:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
