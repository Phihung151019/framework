.class public abstract Lcom/samsung/android/knox/EnterpriseContainerCallback;
.super Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist APKS_COUNT:Ljava/lang/String; = "apksCount"

.field public static final greylist CONTAINER_CANCELLED:I = 0x3f8

.field public static final greylist CONTAINER_CHANGE_PWD_FAILED:I = 0x3f5

.field public static final greylist CONTAINER_CHANGE_PWD_SUCCESSFUL:I = 0x3f4

.field public static final greylist CONTAINER_ID:Ljava/lang/String; = "containerid"

.field public static final greylist CONTAINER_MOUNT_STATUS:I = 0x3f2

.field public static final greylist CONTAINER_PACKAGE_INFORMATION:I = 0x3f3

.field public static final greylist CONTAINER_PACKAGE_INSTALL_FAILURE:I = 0x3ef

.field public static final greylist CONTAINER_PACKAGE_INSTALL_SUCCESS:I = 0x3ee

.field public static final greylist CONTAINER_PACKAGE_UNINSTALL_FAILURE:I = 0x3f1

.field public static final greylist CONTAINER_PACKAGE_UNINSTALL_SUCCESS:I = 0x3f0

.field public static final greylist CONTAINER_REMOVED:I = 0x3eb

.field public static final greylist CONTAINER_REMOVE_UNMOUNT_FAILURE:I = 0x3ed

.field public static final greylist CONTAINER_SETUP_BASE:I = 0x3e8

.field public static final greylist CONTAINER_SETUP_FAILURE:I = 0x3ea

.field public static final greylist CONTAINER_SETUP_SUCCESS:I = 0x3e9

.field public static final greylist CONTAINER_VERIFY_PWD_FAILED:I = 0x3f7

.field public static final greylist CONTAINER_VERIFY_PWD_SUCCESSFUL:I = 0x3f6

.field public static final greylist PACKAGE_INSTALLATION_STATUS:Ljava/lang/String; = "packageInstallStatus"

.field public static final greylist PACKAGE_MANAGER_ERROR_CODE:Ljava/lang/String; = "pmerrorcode"

.field public static final greylist PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final greylist PRIMARY_MOUNT_STATUS:Ljava/lang/String; = "primaryMountStatus"

.field public static final greylist REQUEST_ID:Ljava/lang/String; = "requestid"

.field public static final greylist SECONDARY_MOUNT_STATUS:Ljava/lang/String; = "secondaryMountStatus"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/knox/IEnterpriseContainerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist updateStatus(ILandroid/os/Bundle;)V
.end method
