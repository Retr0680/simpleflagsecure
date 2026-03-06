.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$10:Lcom/android/server/VpnManagerService;

.field public final synthetic f$11:Lcom/android/server/HsumBootUserInitializer;

.field public final synthetic f$12:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$13:Lcom/android/server/timedetector/NetworkTimeUpdateService;

.field public final synthetic f$14:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$15:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$16:Lcom/android/server/media/MediaRouterService;

.field public final synthetic f$17:Lcom/android/server/MmsServiceBroker;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Landroid/net/ConnectivityManager;

.field public final synthetic f$8:Lcom/android/server/net/NetworkManagementService;

.field public final synthetic f$9:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iput-boolean p3, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$2:Z

    iput-object p4, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    iput-boolean p5, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$4:Z

    iput-object p6, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$5:Landroid/content/Context;

    iput-boolean p7, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$6:Z

    iput-object p8, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$7:Landroid/net/ConnectivityManager;

    iput-object p9, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$8:Lcom/android/server/net/NetworkManagementService;

    iput-object p10, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$9:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p11, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$10:Lcom/android/server/VpnManagerService;

    iput-object p12, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$11:Lcom/android/server/HsumBootUserInitializer;

    iput-object p13, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$12:Lcom/android/server/CountryDetectorService;

    iput-object p14, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$13:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iput-object p15, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$14:Lcom/android/server/input/InputManagerService;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$15:Lcom/android/server/TelephonyRegistry;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$16:Lcom/android/server/media/MediaRouterService;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$17:Lcom/android/server/MmsServiceBroker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/SystemServer;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    move-object v3, v2

    iget-boolean v2, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$2:Z

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    move-object v5, v4

    iget-boolean v4, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$4:Z

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$5:Landroid/content/Context;

    move-object v7, v6

    iget-boolean v6, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$6:Z

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$7:Landroid/net/ConnectivityManager;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$8:Lcom/android/server/net/NetworkManagementService;

    move-object v10, v9

    iget-object v9, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$9:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v11, v10

    iget-object v10, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$10:Lcom/android/server/VpnManagerService;

    move-object v12, v11

    iget-object v11, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$11:Lcom/android/server/HsumBootUserInitializer;

    move-object v13, v12

    iget-object v12, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$12:Lcom/android/server/CountryDetectorService;

    move-object v14, v13

    iget-object v13, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$13:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    move-object v15, v14

    iget-object v14, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$14:Lcom/android/server/input/InputManagerService;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$15:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$16:Lcom/android/server/media/MediaRouterService;

    iget-object v0, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$17:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v18, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v17}, Lcom/android/server/SystemServer;->$r8$lambda$CQoJ9no8PBCQWigXqZnOQkSAyrE(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method
