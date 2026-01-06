.class public Lcom/samsung/android/camerax/advanced/ExtensionVersion;
.super Ljava/lang/Object;
.source "ExtensionVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;
    }
.end annotation


# static fields
.field public static volatile CAPTURE_FAILED_CALLBACK_SUPPORTED:Z = false

.field public static volatile PROCESS_PROGRESS_API_SUPPORTED:Z = false

.field private static final TAG:Ljava/lang/String; = "cx/ExtensionVersion"

.field private static final VERSION:Ljava/lang/String; = "1.5.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion;->PROCESS_PROGRESS_API_SUPPORTED:Z

    .line 41
    sput-boolean v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion;->CAPTURE_FAILED_CALLBACK_SUPPORTED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static checkApiVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "version"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extension library version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.5.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cx/ExtensionVersion"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->parse(Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 50
    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v2, v2, v2, v3}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->create(IIILjava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    .line 51
    .local v0, "libraryVersion":Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->parse(Ljava/lang/String;)Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    move-result-object v3

    .line 58
    .local v3, "oemVersion":Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;
    sget-object v4, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_4:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    invoke-virtual {v4, v0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->compareTo(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    sput-boolean v4, Lcom/samsung/android/camerax/advanced/ExtensionVersion;->PROCESS_PROGRESS_API_SUPPORTED:Z

    .line 59
    sget-object v4, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_5:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    invoke-virtual {v4, v0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->compareTo(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)I

    move-result v4

    if-gtz v4, :cond_1

    move v2, v5

    :cond_1
    sput-boolean v2, Lcom/samsung/android/camerax/advanced/ExtensionVersion;->CAPTURE_FAILED_CALLBACK_SUPPORTED:Z

    .line 61
    sget-object v2, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->VERSION_1_3:Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;

    invoke-virtual {v2, v0}, Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;->compareTo(Lcom/samsung/android/camerax/advanced/ExtensionVersion$Version;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 62
    return-object v1

    .line 66
    :cond_2
    const-string v1, "999.0.0"

    return-object v1
.end method

.method public static isAdvancedExtenderImplemented()Z
    .locals 1

    .line 70
    const/4 v0, 0x1

    return v0
.end method
