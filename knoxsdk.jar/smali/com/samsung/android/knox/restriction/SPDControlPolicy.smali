.class public Lcom/samsung/android/knox/restriction/SPDControlPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist SPD_ENFORCE_NONE:I = 0x0

.field public static final greylist SPD_ENFORCE_OFF:I = 0x2

.field public static final greylist SPD_ENFORCE_ON:I = 0x1

.field public static final greylist SPD_FAILED:I = -0x1

.field public static final greylist SPD_OFF:I = 0x4

.field public static final greylist SPD_ON:I = 0x3

.field public static greylist TAG:Ljava/lang/String; = "SPDControlPolicy"


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist getAutoSecurityPolicyUpdateMode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public greylist setAutoSecurityPolicyUpdateMode(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
