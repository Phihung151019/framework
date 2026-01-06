.class public final enum Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
.super Ljava/lang/Enum;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

.field public static final enum greylist IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

.field public static final enum greylist IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;


# direct methods
.method public static synthetic greylist $values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const-string v1, "IPV4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    const-string v1, "IPV6"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object v0
.end method
