.class public Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
.super Ljava/lang/Object;
.source "LocalConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nfc/adapter/LocalConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-direct {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/nfc/adapter/LocalConfiguration-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/nfc/adapter/LocalConfiguration;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fgetmIsoCountryCode(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$smcheckIsoCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fgetmListenTech(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$smcheckListenTech(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fgetmAidRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$smcheckRoute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fgetmIsoDepRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$smcheckRoute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fgetmTechnologyRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$smcheckRoute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fgetmSystemCodeRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$smcheckRoute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid System Code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Technology route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Isodep route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Aid route"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Listen Technology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Iso country code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAidRoute(Ljava/lang/String;)Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fputmAidRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V

    .line 79
    return-object p0
.end method

.method public setIsoCountryCode(Ljava/lang/String;)Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    .locals 1
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fputmIsoCountryCode(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V

    .line 69
    return-object p0
.end method

.method public setIsoDepRoute(Ljava/lang/String;)Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fputmIsoDepRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V

    .line 84
    return-object p0
.end method

.method public setListenTechMask(I)Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    .locals 1
    .param p1, "techMask"    # I

    .line 73
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fputmListenTech(Lcom/samsung/android/nfc/adapter/LocalConfiguration;I)V

    .line 74
    return-object p0
.end method

.method public setSystemCodeRoute(Ljava/lang/String;)Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fputmSystemCodeRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V

    .line 94
    return-object p0
.end method

.method public setTechnologyRoute(Ljava/lang/String;)Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/nfc/adapter/LocalConfiguration$Builder;->mConfiguration:Lcom/samsung/android/nfc/adapter/LocalConfiguration;

    invoke-static {v0, p1}, Lcom/samsung/android/nfc/adapter/LocalConfiguration;->-$$Nest$fputmTechnologyRoute(Lcom/samsung/android/nfc/adapter/LocalConfiguration;Ljava/lang/String;)V

    .line 89
    return-object p0
.end method
