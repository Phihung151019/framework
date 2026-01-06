.class public final enum Lcom/samsung/android/knox/license/LicenseResult$Status;
.super Ljava/lang/Enum;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/LicenseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/license/LicenseResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

.field public static final enum greylist FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

.field public static final enum greylist SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;


# instance fields
.field greylist value:Ljava/lang/String;


# direct methods
.method private static synthetic greylist $values()[Lcom/samsung/android/knox/license/LicenseResult$Status;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Status;->FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/license/LicenseResult$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    const/4 v1, 0x0

    const-string v2, "success"

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/license/LicenseResult$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/license/LicenseResult$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-static {}, Lcom/samsung/android/knox/license/LicenseResult$Status;->$values()[Lcom/samsung/android/knox/license/LicenseResult$Status;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/knox/license/LicenseResult$Status;->value:Ljava/lang/String;

    return-void
.end method

.method public static greylist fromStatusString(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    iget-object v1, v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->value:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/license/LicenseResult$Status;->FAILURE:Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-object p0
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/license/LicenseResult$Status;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->$VALUES:[Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/license/LicenseResult$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseResult$Status;

    return-object v0
.end method
