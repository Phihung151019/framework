.class public Lcom/samsung/android/knox/zt/config/securelog/SignalConfig;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/zt/config/securelog/SignalConfig$ConfidenceScore;,
        Lcom/samsung/android/knox/zt/config/securelog/SignalConfig$PhishingConfig;,
        Lcom/samsung/android/knox/zt/config/securelog/SignalConfig$ConfigSignalType;
    }
.end annotation


# static fields
.field public static final greylist AGGRESSIVE:Ljava/lang/String; = "Aggressive"

.field public static final greylist ALLOW_LIST:Ljava/lang/String; = "allowList"

.field public static final greylist BLOCK_LIST:Ljava/lang/String; = "blockList"

.field public static final greylist CONFIDENCE_SCORE:Ljava/lang/String; = "confidenceScore"

.field public static final greylist MORE_AGGRESSIVE:Ljava/lang/String; = "MoreAggressive"

.field public static final greylist MOST_AGGRESSIVE:Ljava/lang/String; = "MostAggressive"

.field public static final greylist PHISHING:Ljava/lang/String; = "phishing"

.field public static final greylist STANDARD:Ljava/lang/String; = "Standard"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
