.class Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfOcsglLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 536
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .locals 0

    .line 538
    const-string p0, "EF_OCSGL"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 9

    .line 542
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 545
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, [B

    const/4 v5, 0x2

    .line 547
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x80

    if-ne v6, v7, :cond_0

    const/4 v6, 0x3

    .line 548
    aget-byte v6, v4, v6

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0x81

    if-ne v7, v8, :cond_1

    const/4 v6, 0x4

    .line 549
    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x83

    goto :goto_1

    :cond_1
    and-int/lit16 v6, v6, 0xff

    add-int/2addr v6, v5

    :goto_1
    add-int/lit8 v7, v6, 0x2

    .line 556
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v6, v6, 0x3

    .line 557
    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    if-le v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfOcsglLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-lez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableOCSGLList:Z

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_OCSGL record count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method
