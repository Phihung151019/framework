.class public Landroidx/camera/extensions/impl/ExtensionVersionImpl;
.super Ljava/lang/Object;
.source "ExtensionVersionImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public checkApiVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/camerax/advanced/ExtensionVersion;->checkApiVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdvancedExtenderImplemented()Z
    .locals 1

    .line 82
    invoke-static {}, Lcom/samsung/android/camerax/advanced/ExtensionVersion;->isAdvancedExtenderImplemented()Z

    move-result v0

    return v0
.end method
