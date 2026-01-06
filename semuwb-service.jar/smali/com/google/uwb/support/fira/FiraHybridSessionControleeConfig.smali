.class public Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraHybridSessionControleeConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;,
        Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final KEY_NUMBER_OF_PHASES:Ljava/lang/String; = "number_of_phases"

.field public static final KEY_PHASE_LIST:Ljava/lang/String; = "phase_list"

.field private static final PHASE_LIST_SIZE:I = 0x8


# instance fields
.field private final mNumberOfPhases:I

.field private final mPhaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "numberOfPhases"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p2, "phaseList":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;>;"
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->mNumberOfPhases:I

    .line 58
    iput-object p2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->mPhaseList:Ljava/util/List;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/List;Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$1;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;-><init>(ILjava/util/List;)V

    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 68
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 69
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 102
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 80
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 81
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;
    .locals 7
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 111
    new-instance v0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;-><init>()V

    .line 114
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;
    const-string v1, "number_of_phases"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, "numberOfPhases":I
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;->setNumberOfPhases(I)Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;

    .line 117
    const-string v2, "phase_list"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->intArrayToByteArray([I)[B

    move-result-object v2

    .line 118
    .local v2, "phaseByteArray":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 119
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 122
    new-instance v5, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;

    .line 123
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;-><init>(I)V

    .line 124
    .local v5, "mFiraHybridSessionPhaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;
    invoke-virtual {v0, v5}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;->addPhaseList(Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;)Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;

    .line 121
    .end local v5    # "mFiraHybridSessionPhaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$Builder;->build()Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getBundleVersion()I
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public getNumberOfPhases()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->mNumberOfPhases:I

    return v0
.end method

.method public getPhaseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->mPhaseList:Ljava/util/List;

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 5

    .line 87
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 88
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v1, "number_of_phases"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->mNumberOfPhases:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    iget v1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->mNumberOfPhases:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    iget-object v2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->mPhaseList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;

    .line 94
    .local v3, "phaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;->getSessionHandle()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 95
    .end local v3    # "phaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig$FiraHybridSessionPhaseList;
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/uwb/support/fira/FiraHybridSessionControleeConfig;->byteArrayToIntArray([B)[I

    move-result-object v2

    const-string v3, "phase_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 98
    return-object v0
.end method
