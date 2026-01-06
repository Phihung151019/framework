.class public Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;
.super Ljava/lang/Object;
.source "VendorLibFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureInfo"
.end annotation


# instance fields
.field public final majorVersion:I

.field public final minorVersion:I

.field public final name:Ljava/lang/String;

.field public final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "majorVersion"    # I
    .param p4, "minorVersion"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;->vendor:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;->majorVersion:I

    .line 57
    iput p4, p0, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature$FeatureInfo;->minorVersion:I

    .line 58
    return-void
.end method
