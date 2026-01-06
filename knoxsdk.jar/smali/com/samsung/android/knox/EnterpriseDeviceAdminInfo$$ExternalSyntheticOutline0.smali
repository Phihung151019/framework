.class public final synthetic Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# direct methods
.method public static greylist m(ILjava/lang/String;IILjava/util/ArrayList;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
