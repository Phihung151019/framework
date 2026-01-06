.class public Lcom/samsung/android/hardware/context/provider/caeprovider/AutoBrightnessImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "AutoBrightnessImpl.java"


# static fields
.field private static final MAXIMUM_RETRY_TIMES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "context.provider.caeprovider.AutoBrightnessImpl"


# instance fields
.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 48
    const/16 v0, 0x27

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 50
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/AutoBrightnessImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 51
    return-void
.end method

.method private sendReferenceDataToCAE(I[B)Z
    .locals 6
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 72
    const/4 v0, 0x0

    const-string v1, "context.provider.caeprovider.AutoBrightnessImpl"

    if-nez p2, :cond_0

    .line 73
    const-string v2, "data is Null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v0

    .line 77
    :cond_0
    const/4 v2, 0x0

    .line 80
    .local v2, "cnt":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/AutoBrightnessImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v4, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    const/16 v5, 0x41

    invoke-virtual {v3, v4, v5, p2}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[B)Z

    move-result v3

    .line 82
    .local v3, "res":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendReferenceDataToCAE() : config Data!!, data_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    if-eqz v3, :cond_2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendReferenceDataToCAE() : data_type = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    nop

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", result = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v3

    .line 88
    :cond_2
    const/4 v4, 0x5

    if-le v2, v4, :cond_1

    .line 89
    return v0
.end method


# virtual methods
.method public setReferenceData(I[B)Z
    .locals 2
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .line 55
    const-string v0, "context.provider.caeprovider.AutoBrightnessImpl"

    if-nez p2, :cond_0

    .line 56
    const-string v1, "setReferenceData() : data is Null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    const-string v1, "setReferenceData() : configuration mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/AutoBrightnessImpl;->sendReferenceDataToCAE(I[B)Z

    move-result v0

    return v0
.end method
