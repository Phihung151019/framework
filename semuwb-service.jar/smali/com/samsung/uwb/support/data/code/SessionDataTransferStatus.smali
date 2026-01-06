.class public Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;
.super Ljava/lang/Object;
.source "SessionDataTransferStatus.java"


# static fields
.field public static final STATUS_ERROR_DATA_TRANSFER:I = 0x2

.field public static final STATUS_ERROR_DATA_TRANSFER_IS_ONGOING:I = 0x6

.field public static final STATUS_ERROR_NO_CREDIT_AVAILABLE:I = 0x3

.field public static final STATUS_ERROR_REJECTED:I = 0x4

.field public static final STATUS_INVALID_FORMAT:I = 0x7

.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_REPETITION_OK:I = 0x0

.field public static final STATUS_SESSION_TYPE_NOT_SUPPORTED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSessionDataTransferStatus(I)Ljava/lang/String;
    .locals 8
    .param p0, "status"    # I

    .line 19
    const-class v0, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 20
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 22
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/code/SessionDataTransferStatus;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    .local v6, "value":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, p0, :cond_0

    .line 24
    return-object v5

    .line 19
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_1
    goto :goto_1

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getSessionDataTransferStatus Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "INVALID"

    return-object v0
.end method
