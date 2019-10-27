import 'package:fl_chart/fl_chart.dart';

class ProfileConfig {
  static final List<String> kanye = [
    "KW",
    "10%",
    "78 mg/dl",
    "75 mmhg",
    "4320",
    "68.1 kg",
    "4.5%",
    "110 mg/dl",
    "75 mg/dl",
    "Kanye",
  ];

  static final List<String> maya = [
    "MA",
    "12%",
    "161 mg/dl",
    "90 mmhg",
    "2311",
    "88.1 kg",
    "11%",
    "159 mg/dl",
    "31 mg/dl",
    "Maya",
  ];

  static final List<String> clarrisa = [
    "CL",
    "11%",
    "123 mg/dl",
    "83 mmhg",
    "3411",
    "78.1 kg",
    "6.2%",
    "133 mg/dl",
    "50 mg/dl",
    "Clarissa"
  ];

  static final Map<String, String> physician = {
    "resourceType": "CarePlan",
    "identifier": "diabetes patient",
    "category": "Wound Care.",
    "activity": "Dressing change management.",
    "detail": "Behavior to prevent infection.",
    "status": "Completed.",
    "statusReason": "Wound is nearly healed.",
    "medicationRequest": "12 x 500mg Paracetamol tabs.",
    "medicationRequestStatusReason": "In case of pain relapse."
  };

  static final Map<String, String> physician2 = {
    "resourceType": "CarePlan",
    "identifier": "diabetes patient",
    "category": "Wound Care",
    "activity": "Dressing change management",
    "detail": "Behavior to prevent infection",
    "status": "Completed.",
    "statusReason": "Wound is almost healed",
    "medicationRequest": "Light Intensity Painkillers",
    "medicationRequestStatusReason": "In case if wound still hurts"
  };

  static final Map<String, String> pharmacist = {
    "resourceType": "CarePlan",
    "identifier": "normal patient",
    "category": "Allergic disorder assessment.",
    "activity": "Allergy screening test.",
    "detail": "To diagnose if patient has allergic disorders.",
    "status": "In-progress.",
    "statusReason": "Initial stage.",
    "medicationRequest": "None Required.",
    "medicationRequestStatusReason": "None Required."
  };

  static final Map<String, String> dietitian = {
    "resourceType": "CarePlan",
    "identifier": "pre-diabetes patient",
    "category": "Lifestyle education regarding hypertension.",
    "activity": "Counseling about alcohol consumption.",
    "detail": "Dietary approaches to stop hypertension diet",
    "status": "In-progress.",
    "statusReason": "Patient consumes copius amounts of alcohol weekly",
    "medicationRequest": "More fresh fruits and leafy vegetables in diet.",
    "medicationRequestStatusReason":
        "Dietary approaches to stop hypertension diet."
  };

  static final Map<String, String> therapist = {
    "resourceType": "CarePlan",
    "identifier": "normal patient",
    "category": "Physical therapy procedure.",
    "activity": "Stretching exercises.",
    "detail": "Rest, ice, compression and elevation treatment programme.",
    "status": "In-progress.",
    "statusReason": "Patient arm is still sprained.",
    "medicationRequest": "None Required.",
    "medicationRequestStatusReason": "None Required."
  };

  static final List<FlSpot> glucoseChart = [
    FlSpot(1, 1),
    FlSpot(1, 1),
    FlSpot(1, 1),
    FlSpot(1, 1),
    FlSpot(1, 1),
    FlSpot(1, 1),
    FlSpot(1, 1),
  ];
}
