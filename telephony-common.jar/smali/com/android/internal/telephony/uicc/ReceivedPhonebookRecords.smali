.class public Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;
.super Ljava/lang/Object;
.source "ReceivedPhonebookRecords.java"


# static fields
.field public static final blacklist RS_ABORT:I = 0x3

.field public static final blacklist RS_ERROR:I = 0x2

.field public static final blacklist RS_FINAL:I = 0x4

.field public static final blacklist RS_OK:I = 0x1


# instance fields
.field private blacklist mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhonebookReceivedState:I


# direct methods
.method public constructor blacklist <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecord;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->mPhonebookReceivedState:I

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->mEntries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getPhonebookRecords()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/SimPhonebookRecord;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->mEntries:Ljava/util/List;

    return-object p0
.end method

.method public blacklist isCompleted()Z
    .locals 1

    .line 56
    iget p0, p0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->mPhonebookReceivedState:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOk()Z
    .locals 1

    .line 64
    iget p0, p0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->mPhonebookReceivedState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isRetryNeeded()Z
    .locals 1

    .line 60
    iget p0, p0, Lcom/android/internal/telephony/uicc/ReceivedPhonebookRecords;->mPhonebookReceivedState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
