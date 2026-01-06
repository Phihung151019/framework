.class Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
.super Ljava/lang/Object;
.source "ExposureToLuxMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/ExposureToLuxMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EV2L_Item"
.end annotation


# instance fields
.field m_brightness:F

.field m_exposure:F

.field m_lux:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/ExposureToLuxMapping-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;-><init>()V

    return-void
.end method


# virtual methods
.method public setBrightness(F)V
    .locals 0
    .param p1, "bri"    # F

    .line 1094
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_brightness:F

    .line 1095
    return-void
.end method

.method public setExposure(F)V
    .locals 0
    .param p1, "exp"    # F

    .line 1090
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_exposure:F

    .line 1091
    return-void
.end method

.method public setLux(F)V
    .locals 0
    .param p1, "lux"    # F

    .line 1098
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_lux:F

    .line 1099
    return-void
.end method
