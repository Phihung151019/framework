.class public final Lcom/android/nfc/module/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/nfc/module/flags/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist nfcHceLatencyEvents()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public greylist oemExtension25q4()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist readerModeAnnotations()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public greylist readerModeIgnoreFrame()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method
